using System.Configuration;
namespace Mentoring.Configuration.Implementation
{
    using System.Collections.Generic;

    public class LocalConfiguration : IConfiguration
    {
        public IEnumerable<string> Keys
        {
            get
            {
                return ConfigurationManager.AppSettings.AllKeys;
            }
        }

        public string this[string name]
        {
            get
            {
                return ConfigurationManager.AppSettings[name];
            }
        }
    }
}
