namespace Mentoring.Service.Actions
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Threading;
    using System.Threading.Tasks;

    using Mentoring.Configuration;
    using Mentoring.DocumentManagement;
    using Mentoring.DocumentManagement.DL;
    using Mentoring.Logging;

    public class DocumentIndexer : ActionBase
    {
        private const string WatchPathSetting = "watchPath";

        private const string WatchSubdirectoriesSetting = "watchSubdirectories";

        private static object lockObj = new object();

        private FileSystemWatcher fileSystemWatcher;

        private readonly IConfiguration configuration;

        private CancellationToken token;

        private IDocumentManagementClient documentManagementClient;

        private FileSystemEventHandler changeEventHandler;

        private RenamedEventHandler renamedEventHandler;

        public DocumentIndexer(IConfiguration configuration, ILogger logger, IDocumentManagementClient documentManagementClient) : base(logger)
        {
            if (configuration == null)
            {
                throw new ArgumentNullException("configuration");
            }

            if (logger == null)
            {
                throw new ArgumentNullException("logger");
            }

            if (documentManagementClient == null)
            {
                throw new ArgumentNullException("documentManagementClient");
            }

            this.configuration = configuration;
            this.documentManagementClient = documentManagementClient;

            fileSystemWatcher = new FileSystemWatcher();
        }

        public string WatchPath
        {
            get
            {
                return this.configuration[WatchPathSetting];
            }
        }

        protected override void DoWork(CancellationToken token)
        {
            if (this.token.IsCancellationRequested)
            {
                this.DisableWatcher();
                return;
            }

            try
            {
                this.token = token;

                bool watchSubdirectories = bool.Parse(this.configuration[WatchSubdirectoriesSetting]);

                this.fileSystemWatcher.Path = this.WatchPath;
                this.fileSystemWatcher.IncludeSubdirectories = watchSubdirectories;

                this.changeEventHandler = (source, args) => this.OnChanged(source, args);
                this.renamedEventHandler = this.OnRenamed;

                this.fileSystemWatcher.Created += changeEventHandler;
                this.fileSystemWatcher.Changed += changeEventHandler;
                this.fileSystemWatcher.Renamed += renamedEventHandler;

                this.CheckFolder().ContinueWith(
                    (obj) =>
                        {
                            this.fileSystemWatcher.EnableRaisingEvents = true;
                        },
                    token);

            }
            catch (Exception ex)
            {
                this.logger.LogException(ex);
                throw;
            }
        }
        
        private async Task OnChanged(object source, FileSystemEventArgs e)
        {
            if (this.token.IsCancellationRequested)
            {
                this.DisableWatcher();
            }

            try
            {
                await this.UploadFile(e.FullPath);
            }
            catch (Exception ex)
            {
                this.logger.LogException(ex);
            }
        }

        private async Task CheckFolder()
        {
            var files = this.EnumerateFiles(this.WatchPath);

            if (files.Count() > 0)
            {
                foreach (var file in files)
                {
                    await this.UploadFile(file.FullName);
                }
            }
        }

        private async Task UploadFile(string filePath)
        {
            if (File.Exists(filePath))
                {
                    DocumentMetadata uploadResult = null;
                    var startIndex = filePath.IndexOf(this.WatchPath);
                    if (startIndex > -1)
                    {
                        var fi = new FileInfo(filePath);
                        var fileName = fi.Name;
                        var destPath = string.Empty;
                        if (!fi.DirectoryName.Equals(this.WatchPath, StringComparison.InvariantCultureIgnoreCase))
                        {
                            destPath = filePath.Substring(startIndex + this.WatchPath.Length)
                                .Replace(fileName, string.Empty);
                        }

                        using (var fs = File.Open(filePath, FileMode.Open))
                        {
                            uploadResult = await this.documentManagementClient.Upload(destPath, fileName, fs);
                        }

                        this.logger.Log(
                            string.Format(
                                "File {0} successfully uploaded to folder {1}. Assigned Id: {2}",
                                fileName,
                                destPath,
                                uploadResult.Id));

                        File.Delete(filePath);
                    }
                    else
                    {
                        this.logger.LogError(string.Format("Unable to upload file {0}", filePath));
                    }
                }
                else
                {
                    this.logger.LogError(string.Format("File {0} does not exist", filePath));
                }
        }

        private IList<FileInfo> EnumerateFiles(string directoryPath)
        {
            var di = new DirectoryInfo(directoryPath);

            return di.EnumerateFiles().ToList();
        }

        private void OnRenamed(object source, RenamedEventArgs e)
        {
            if (this.token.IsCancellationRequested)
            {
                this.DisableWatcher();
            }
        }

        private void DisableWatcher()
        {
            if (fileSystemWatcher != null)
            {
                this.fileSystemWatcher.Changed -= this.changeEventHandler;
                this.fileSystemWatcher.Created -= this.changeEventHandler;
                this.fileSystemWatcher.Renamed -= this.renamedEventHandler;

                this.fileSystemWatcher.Dispose();
                this.fileSystemWatcher = null;
            }

            this.logger.Log("File system watcher disabled");
        }
    }
}
