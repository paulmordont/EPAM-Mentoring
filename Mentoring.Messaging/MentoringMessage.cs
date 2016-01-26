namespace Mentoring.Messaging
{
    using System.Runtime.Serialization;

    [DataContract]
    public class MentoringMessage
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Name { get; set; }

        public override string ToString()
        {
            return string.Format("Id: {0}, Name: {1}", this.Id, this.Name);
        }
    }
}
