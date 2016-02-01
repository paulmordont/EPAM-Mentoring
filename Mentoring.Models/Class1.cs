namespace Mentoring.Models
{
    using System.Runtime.Serialization;

    [DataContract(Name = "Class1")]
    public class Class1 : BaseClass
    {
        [DataMember]
        public string Name { get; set; }

        public override string ToString()
        {
            return string.Format("Id: {0}, Name: {1}", this.Id, this.Name);
        }
    }
}
