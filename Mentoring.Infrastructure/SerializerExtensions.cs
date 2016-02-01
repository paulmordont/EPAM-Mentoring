namespace Mentoring.Infrastructure
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Runtime.Serialization;
    using System.Text;
    using System.Xml;

    public static class SerializerExtensions
    {
        public static T Deserialize<T>(this string text)
        {
            return Deserialize<T>(text, null);
        }

        public static T Deserialize<T>(this string text, IEnumerable<Type> knownTypes)
        {
            DataContractSerializer serializer = new DataContractSerializer(typeof(T), knownTypes);
            using (XmlReader reader = XmlReader.Create(new StringReader(text)))
            {
                return (T)serializer.ReadObject(reader);
            }
        }

        public static string Serialize<T>(this T item)
        {
            return Serialize(item, null);
        }

        public static string Serialize<T>(this T item, IEnumerable<Type> knownTypes)
        {
            DataContractSerializer serializer = new DataContractSerializer(typeof(T), knownTypes);
            StringBuilder sb = new StringBuilder();

            using (XmlTextWriter writer = new XmlTextWriter(new StringWriter(sb)))
            {
                serializer.WriteObject(writer, item);
                return sb.ToString();
            }
        }
    }
}
