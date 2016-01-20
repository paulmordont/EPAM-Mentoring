namespace Mentoring.Service.Actions
{
    using System.Threading;

    public interface IAction
    {
        void Start(CancellationToken cancellationToken);
    }
}
