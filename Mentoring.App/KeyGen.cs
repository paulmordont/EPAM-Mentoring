using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mentoring.App
{
    using System.Net.NetworkInformation;
    using System.Runtime.Remoting.Messaging;
    
    public static class KeyGen
    {
        public static void Run()
        {
            var networkInterface = NetworkInterface.GetAllNetworkInterfaces().FirstOrDefault<NetworkInterface>();
            var macBytes = networkInterface.GetPhysicalAddress().GetAddressBytes();
            var dateBytes = BitConverter.GetBytes(DateTime.Now.Date.ToBinary());
            var keyArray = macBytes.Select((b, i) => (int)(b ^ dateBytes[i])).Cast<int>().Select(
                (k) =>
                    {
                        if (k <= 990)
                        {
                            return k * 10;
                        }
                        return k;
                    });
            var key = string.Join("-", keyArray);
            Console.WriteLine("Generated key: {0}", key);
            Console.ReadLine();
        }
    }
}
