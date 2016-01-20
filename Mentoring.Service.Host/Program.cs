using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace Mentoring.Service.Host
{
    using System.Diagnostics;

    using Mentoring.Configuration;
    using Mentoring.Configuration.Implementation;
    using Mentoring.DocumentManagement;
    using Mentoring.DocumentManagement.Implementation;
    using Mentoring.Logging;
    using Mentoring.Logging.Implementation;
    using Mentoring.Service.Actions;

    using Microsoft.Practices.Unity;

    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main(string[] args)
        {
            DocumentIndexerService service = null;
            try
            {
                service = InitializeService();
                service.Start(args);
            }
            catch (Exception e)
            {
                string serviceName = (service != null) ? service.ServiceName : "Mentoring.Service.Host";
                if (!EventLog.SourceExists(serviceName))
                {
                    EventLog.CreateEventSource(serviceName, "Application");
                }

                EventLog.WriteEntry(serviceName, e.Message, EventLogEntryType.Error);
            }
        }

        private static DocumentIndexerService InitializeService()
        {
            var container = new UnityContainer();

            container.RegisterType<IConfiguration, LocalConfiguration>(new ContainerControlledLifetimeManager());
            IConfiguration configuration = container.Resolve<IConfiguration>();
            container.RegisterInstance(
                "accessToken",
                configuration["accessToken"],
                new ContainerControlledLifetimeManager());
            container.RegisterType<ILogger, EventLogLogger>();
            container.RegisterType<IDocumentManagementClient, CustomDropboxClient>(new InjectionConstructor(
                new ResolvedParameter<string>("accessToken")));
            container.RegisterType<IAction, DocumentIndexer>();
            container.RegisterType<DocumentIndexerService, DocumentIndexerService>(new InjectionConstructor(new ResolvedParameter<IAction>()));

            DocumentIndexerService service = container.Resolve<DocumentIndexerService>();

            return service;
        }
    }
}
