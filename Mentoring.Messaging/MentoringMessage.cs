namespace Mentoring.Messaging
{
    using System;
    using System.Runtime.Serialization;

    [DataContract]
    public class MentoringMessage
    {
        public MentoringMessage()
        {
            this.Id = new Random().Next(0, 100);
            this.Name = string.Concat(this.Id.ToString(), "_name");
        }

        public MentoringMessage(int id, string name)
        {
            this.Id = id;
            this.Name = name;
        }

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
