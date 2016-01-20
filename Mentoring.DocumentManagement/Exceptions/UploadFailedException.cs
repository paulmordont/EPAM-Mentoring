namespace Mentoring.DocumentManagement.Exceptions
{
    using System;

    [Serializable]
    public class UploadFailedException : Exception
    {
        public UploadFailedException()
        {
        }

        public UploadFailedException(string message)
            : base(message)
        {
        }

        public UploadFailedException(string message, Exception innerException)
            : base(message, innerException)
        {
        }
    }
}
