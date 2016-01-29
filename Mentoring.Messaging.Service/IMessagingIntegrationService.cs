using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Mentoring.Messaging.Service
{
    using System.ServiceModel.MsmqIntegration;

    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IMessagingService" in both code and config file together.
    [ServiceContract]
    [ServiceKnownType(typeof(MentoringMessage))]
    public interface IMessagingIntegrationService
    {
        [OperationContract(IsOneWay = true, Action = "*")]
        void SubmitMessage(MsmqMessage<MentoringMessage> message);
    }
}
