namespace Mentoring.Logging
{
    using System;

    public interface ILogger
    {
        void Log(string message);

        void LogError(string message);

        void LogException(Exception exception, string mesage = null);
    }
}
