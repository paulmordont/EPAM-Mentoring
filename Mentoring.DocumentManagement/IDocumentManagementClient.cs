namespace Mentoring.DocumentManagement
{
    using System.IO;
    using System.Threading.Tasks;

    using Mentoring.DocumentManagement.DL;

    public interface IDocumentManagementClient
    {
        Task<DocumentMetadata> Upload(string folder, string file, Stream content);
    }
}
