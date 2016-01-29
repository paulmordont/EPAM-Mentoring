using System;

namespace Mentoring.Messaging.Service
{
    using System.ServiceModel;
    using System.ServiceModel.MsmqIntegration;

    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "MessagingService" in both code and config file together.
    public class MessagingIntegrationService : IMessagingIntegrationService
    {
        [OperationBehavior(TransactionScopeRequired = false, TransactionAutoComplete = true)]
        public void SubmitMessage(MsmqMessage<MentoringMessage> message)
        {
            MentoringMessage msg = (MentoringMessage)message.Body;

            Console.WriteLine(msg.ToString());
        }
    }
}
