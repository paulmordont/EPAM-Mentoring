using System;

namespace Mentoring.App
{
    using System.Threading;

    using Mentoring.Configuration;
    using Mentoring.Configuration.Implementation;
    using Mentoring.Logging;
    using Mentoring.Logging.Implementation;
    using Mentoring.Messaging;
    using Mentoring.Messaging.Implementation;

    using Microsoft.Practices.Unity;

    public static class MessagingApp
    {
        public static void Run()
        {
            var container = new UnityContainer();

            container.RegisterType<IConfiguration, LocalConfiguration>(new ContainerControlledLifetimeManager());
            IConfiguration configuration = container.Resolve<IConfiguration>();
            container.RegisterType<ILogger, EventLogLogger>();
            container.RegisterType<IQueueAdapter, QueueAdapter>();

            IQueueAdapter adapter = container.Resolve<IQueueAdapter>();

            string msmqNonTransactionalPath1 = configuration["msmqNonTransactionalPath1"];

            adapter.CreateQueue(msmqNonTransactionalPath1);

            while (!Console.KeyAvailable)
            {
                Console.WriteLine(
                    string.Format(
                        "{0}: {1}",
                        msmqNonTransactionalPath1,
                        adapter.SendMessage(msmqNonTransactionalPath1, new MentoringMessage())));
                Thread.Sleep(1000);
            }
        }
    }
}
