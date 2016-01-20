namespace Mentoring.Service.Host
{
    using System;
    using System.ServiceProcess;
    using System.Threading;

    using Mentoring.Service.Actions;

    public partial class DocumentIndexerService : ServiceBase
    {
        private readonly IAction documentIndexer;

        private CancellationTokenSource cancellationTokenSource;

        public DocumentIndexerService(IAction documentIndexer)
        {
            InitializeComponent();

            this.documentIndexer = documentIndexer;
        }

        public void Start(string[] args)
        {
            if (Environment.UserInteractive)
            {
                this.OnStart(args);
                Console.WriteLine("{0} was started", this.ServiceName);
                Console.WriteLine("Press any key to stop the {0}", this.ServiceName);
                Console.Read();
                this.Stop();
            }
            else
            {
                Run(this);
            }

            Environment.Exit(0);
        }

        protected override void OnShutdown()
        {
            this.cancellationTokenSource.Cancel();
        }

        protected override void OnStart(string[] args)
        {
            this.cancellationTokenSource = this.cancellationTokenSource ?? new CancellationTokenSource();

            this.documentIndexer.Start(cancellationTokenSource.Token);
        }

        protected override void OnStop()
        {
            this.cancellationTokenSource.Cancel();
        }
    }
}
