namespace Mentoring.Logging.Implementation
{
    using System;
    using System.Diagnostics;
    using System.Linq;

    using Mentoring.Configuration;
    using Mentoring.Configuration.Implementation;

    public class EventLogLogger : ILogger
    {
        #region Constants

        /// <summary>
        /// The application name key.
        /// </summary>
        private const string ApplicationNameKey = "applicationName";

        #endregion

        #region Fields

        /// <summary>
        /// The application name.
        /// </summary>
        private string appName;

        #endregion

        public EventLogLogger()
        {
            this.appName = this.GetApplicationName();
        }

        public void Log(string message)
        {
            if (!EventLog.SourceExists(this.appName))
            {
                EventLog.CreateEventSource(this.appName, "Application");
            }

            EventLog.WriteEntry(this.appName, string.Format("Message: {0}", message), EventLogEntryType.Information);
        }

        public void LogError(string message)
        {
            if (!EventLog.SourceExists(this.appName))
            {
                EventLog.CreateEventSource(this.appName, "Application");
            }

            EventLog.WriteEntry(this.appName, string.Format("Message: {0}", message), EventLogEntryType.Error);
        }

        public void LogException(Exception exception, string message = null)
        {
            if (!EventLog.SourceExists(this.appName))
            {
                EventLog.CreateEventSource(this.appName, "Application");
            }

            EventLog.WriteEntry(
                this.appName,
                string.Format(
                    "{3}{1} Message: {0}{1}Stack trace:{1} {2}",
                    exception.Message,
                    Environment.NewLine,
                    exception.StackTrace,
                    message),
                EventLogEntryType.Error);
        }

        private string GetApplicationName()
        {
            IConfiguration configuration = new LocalConfiguration();
            if (configuration.Keys.Contains(ApplicationNameKey))
            {
                return configuration[ApplicationNameKey];
            }

            return "MentoringApplication";
        }
    }
}
