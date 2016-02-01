using System;

namespace Mentoring.App
{
    using Mentoring.Infrastructure;
    using Mentoring.Models;

    public static class SerializationApp
    {
        public static void Run()
        {
            var arrayForSerialization = new BaseClass[] { new Class1 { Id = 1, Name = "qwe" }, new Class2 { Id = 2, Order = 4 } };
            string serialized = arrayForSerialization.Serialize(new Type[] { typeof(Class1), typeof(Class2) });
            Console.WriteLine("Initial value:");
            foreach (var item in arrayForSerialization)
            {
                Console.WriteLine(item.ToString());
            }
            Console.WriteLine("Serialized value:");
            Console.WriteLine(serialized);
            var deserialized = serialized.Deserialize<BaseClass[]>(
                new Type[] { typeof(Class1), typeof(Class2) });
            Console.WriteLine("Deserialized value:");
            foreach (var item in deserialized)
            {
                Console.WriteLine(item.ToString());
            }
            Console.ReadLine();
        }
    }
}
