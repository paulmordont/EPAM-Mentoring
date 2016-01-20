namespace Mentoring.DocumentManagement.DL
{
    using System;

    public class DocumentMetadata
    {
        public string Id { get; set; }

        public string RevisionId { get; set; }

        public ulong Size { get; set; }

        public DateTime ServerModified { get; set; }
    }
}
