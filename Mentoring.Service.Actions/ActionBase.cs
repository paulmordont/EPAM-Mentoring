namespace Mentoring.Service.Actions
{
    using System;
    using System.Threading;
    using System.Threading.Tasks;

    using Mentoring.Logging;

    public abstract class ActionBase : IAction
    {
        protected readonly ILogger logger;

        private CancellationToken cancellationToken;

        protected ActionBase(ILogger logger)
        {
            if (logger == null)
            {
                throw new ArgumentNullException("logger");
            }

            this.logger = logger;
        }

        public void Start(CancellationToken cancellationToken)
        {
            if (cancellationToken == null)
            {
                throw new ArgumentNullException("cancellationToken");
            }

            this.cancellationToken = cancellationToken;

            Task.Factory.StartNew(this.TaskAction, TaskCreationOptions.LongRunning);
        }
        
        private void TaskAction()
        {
            if (this.cancellationToken.IsCancellationRequested)
            {
                this.logger.Log(
                    string.Format(
                        "Action cancelled"));
                return;
            }

            try
            {
                this.DoWork(this.cancellationToken);
            }
            catch (OperationCanceledException)
            {
                return;
            }
            catch (Exception ex)
            {
                this.logger.LogException(ex);
            }
        }

        /// <summary>
        /// The do work.
        /// </summary>
        protected abstract void DoWork(CancellationToken token);
    }
}
