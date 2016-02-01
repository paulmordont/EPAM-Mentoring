namespace Mentoring.Models
{
    using System.Runtime.Serialization;

    [DataContract(Name = "Class2")]
    public class Class2 : BaseClass
    {
        [DataMember]
        public int Order { get; set; }

        public override string ToString()
        {
            return string.Format("Id: {0}, Order: {1}", this.Id, this.Order);
        }
    }
}
