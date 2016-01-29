using System;

namespace Mentoring.Messaging.Service
{
    using System.Configuration;
    using System.Security.Principal;
    using System.ServiceModel;

    class Program
    {
        static void Main(string[] args)
        {
            using (ServiceHost host = new ServiceHost(typeof(MessagingIntegrationService)))
            {
                host.Open();
                Console.WriteLine("The service is ready.");
                Console.WriteLine("The service is running in the following account: {0}", WindowsIdentity.GetCurrent().Name);
                Console.WriteLine("Press <ENTER> to terminate service.");
                Console.WriteLine();
                Console.ReadLine();

                // Close the ServiceHostBase to shutdown the service.
                host.Close();
            }
        }
    }
}
