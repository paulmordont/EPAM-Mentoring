namespace Mentoring.App
{
    using System;

    using Mentoring.Configuration;
    using Mentoring.Configuration.Implementation;
    using Mentoring.Logging;
    using Mentoring.Logging.Implementation;
    using Mentoring.Messaging;
    using Mentoring.Messaging.Implementation;

    using Microsoft.Practices.Unity;

    public class Program
    {
        private static void Main(string[] args)
        {
            var container = new UnityContainer();

            container.RegisterType<IConfiguration, LocalConfiguration>(new ContainerControlledLifetimeManager());
            IConfiguration configuration = container.Resolve<IConfiguration>();
            container.RegisterType<ILogger, EventLogLogger>();
            container.RegisterType<IQueueAdapter, QueueAdapter>();

            IQueueAdapter adapter = container.Resolve<IQueueAdapter>();

            string msmqNonTransactionalPath1 = configuration["msmqNonTransactionalPath1"];
            string msmqTransactionalPath2 = configuration["msmqTransactionalPath2"];

            adapter.CreateQueue(msmqNonTransactionalPath1);
            adapter.CreateQueue(msmqTransactionalPath2, true);

            Console.WriteLine(string.Format("{0}: {1}",
                msmqNonTransactionalPath1,
                adapter.SendMessage(msmqNonTransactionalPath1, new MentoringMessage { Id = 0, Name = "Name: 0" })));
            Console.WriteLine(string.Format("{0}: {1}", msmqNonTransactionalPath1, adapter.ReadMessage(msmqNonTransactionalPath1)));

            Console.WriteLine(string.Format("{0}: {1}",
               msmqTransactionalPath2,
               adapter.SendMessage(msmqTransactionalPath2, new MentoringMessage { Id = 0, Name = "Name: 0" })));
            Console.WriteLine(string.Format("{0}: {1}", msmqTransactionalPath2, adapter.ReadMessage(msmqTransactionalPath2)));

            Console.ReadLine();
        }
    }
}
