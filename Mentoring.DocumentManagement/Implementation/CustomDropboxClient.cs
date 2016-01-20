namespace Mentoring.DocumentManagement.Implementation
{
    using System;
    using System.IO;
    using System.Threading.Tasks;

    using Dropbox.Api;
    using Dropbox.Api.Files;

    using Mentoring.DocumentManagement.DL;
    using Mentoring.DocumentManagement.Exceptions;

    public class CustomDropboxClient : IDocumentManagementClient
    {
        private readonly string accessToken;

        public CustomDropboxClient(string accessToken)
        {
            if (accessToken == null)
            {
                throw new ArgumentNullException("accessToken");
            }

            this.accessToken = accessToken;
        }

        public async Task<DocumentMetadata> Upload(string folder, string file, Stream content)
        {
            using (DropboxClient dropboxClient = new DropboxClient(this.accessToken))
            {
                try
                {
                    folder = folder.TrimEnd('/', '\\').Replace(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
                    file = file.TrimStart('/', '\\');
                    
                    var updated =
                        await
                        dropboxClient.Files.UploadAsync(
                            folder + "/" + file,
                            WriteMode.Overwrite.Instance,
                            false,
                            null,
                            false,
                            content);
                    return new DocumentMetadata
                               {
                                   Id = updated.Id,
                                   RevisionId = updated.Rev,
                                   ServerModified = updated.ServerModified,
                                   Size = updated.Size
                               };
                }
                catch (ApiException<UploadError> ex)
                {
                    throw new UploadFailedException(
                        string.Format("Upload failed for the next file: {0}", Path.Combine(folder, file)),
                        ex);
                }
                
            }
        }
    }
}
