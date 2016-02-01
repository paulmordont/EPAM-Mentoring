namespace Mentoring.Models
{
    using System.Runtime.Serialization;

    [DataContract]
    public class BaseClass
    {
        [DataMember]
        public int Id { get; set; }
    }
}
