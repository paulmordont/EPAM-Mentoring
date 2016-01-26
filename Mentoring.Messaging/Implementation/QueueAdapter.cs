namespace Mentoring.Messaging.Implementation
{
    using System;
    using System.Messaging;

    using Mentoring.Logging;

    public class QueueAdapter : IQueueAdapter
    {
        private readonly ILogger logger;

        public QueueAdapter(ILogger logger)
        {
            if (logger == null)
            {
                throw new ArgumentNullException("logger");
            }

            this.logger = logger;
        }

        public void CreateQueue(string queuePath, bool transactional = false)
        {
            if (string.IsNullOrWhiteSpace(queuePath))
            {
                throw new ArgumentNullException("queuePath");
            }

            try
            {
                if (!MessageQueue.Exists(queuePath))
                {
                    MessageQueue.Create(queuePath, transactional);
                }

                this.logger.Log(string.Format("Queue {0} already exists", queuePath));
            }
            catch (MessageQueueException ex)
            {
                this.logger.LogException(ex, string.Format("An error occured while creating queue. Path: {0}", queuePath));
            }
        }

        public void DeleteQueue(string queuePath)
        {
            if (string.IsNullOrWhiteSpace(queuePath))
            {
                throw new ArgumentNullException("queuePath");
            }

            try
            {
                if (MessageQueue.Exists(queuePath))
                {
                    MessageQueue.Delete(queuePath);
                }

                this.logger.Log(string.Format("Queue {0} does not exist", queuePath));
            }
            catch (MessageQueueException ex)
            {
                this.logger.LogException(ex, string.Format("An error occured while deleting queue. Path: {0}", queuePath));
            }
        }

        public bool SendMessage(string queuePath, object message)
        {
            try
            {
                if (!MessageQueue.Exists(queuePath))
                {
                    this.logger.Log(string.Format("Queue {0} does not exist", queuePath));

                    return false;
                }

                using (var queue = new MessageQueue(queuePath, QueueAccessMode.Send))
                {
                    queue.Formatter = new XmlMessageFormatter(new[] { typeof(MentoringMessage) });

                    MessageQueueTransaction transaction = null;
                    if (queue.Transactional)
                    {
                        transaction = new MessageQueueTransaction();
                        transaction.Begin();
                    }

                    using (Message m = new Message(message) { Recoverable = true })
                    {
                        if (transaction != null)
                        {
                            queue.Send(m, transaction);
                        }
                        else
                        {
                            queue.Send(m);
                        }
                    }

                    if (transaction != null)
                    {
                        transaction.Commit();
                    }
                }

                return true;
            }
            catch (MessageQueueException ex)
            {
                this.logger.LogException(ex, string.Format("An error occured while deleting queue. Path: {0}", queuePath));
                return false;
            }
        }

        public MentoringMessage ReadMessage(string queuePath)
        {
            try
            {
                if (!MessageQueue.Exists(queuePath))
                {
                    this.logger.Log(string.Format("Queue {0} does not exist", queuePath));

                    return null;
                }

                MentoringMessage msg = null;
                using (var queue = new MessageQueue(queuePath, QueueAccessMode.Receive))
                {
                    queue.Formatter = new XmlMessageFormatter(new[] { typeof(MentoringMessage) });
                    MessageQueueTransaction transaction = null;
                    if (queue.Transactional)
                    {
                        transaction = new MessageQueueTransaction();
                        transaction.Begin();
                    }
                    msg = transaction != null
                              ? queue.Receive(TimeSpan.FromMinutes(1), transaction).Body as MentoringMessage
                              : queue.Receive(TimeSpan.FromMinutes(1)).Body as MentoringMessage;
                    
                    if (transaction != null)
                    {
                        transaction.Commit();
                    }
                }

                return msg;
            }
            catch (MessageQueueException ex)
            {
                this.logger.LogException(ex, string.Format("An error occured while deleting queue. Path: {0}", queuePath));
                return null;
            }
        }
    }
}
