namespace Mentoring.Messaging
{
    public interface IQueueAdapter
    {
        void CreateQueue(string queuePath, bool transactional = false);

        void DeleteQueue(string queuePath);

        bool SendMessage(string queuePath, object message);

        MentoringMessage ReadMessage(string queuePath);
    }
}
