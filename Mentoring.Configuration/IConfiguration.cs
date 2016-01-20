namespace Mentoring.Configuration
{
    using System.Collections.Generic;

    public interface IConfiguration
    {
        IEnumerable<string> Keys { get; }

        string this[string name]
        {
            get;
        }
    }
}
