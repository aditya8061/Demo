using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace CalculatorService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : MathIService
    {
        public string Add(string a, string b)
        {
            int r1 = Convert.ToInt32(a);
            int r2 = Convert.ToInt32(b);
            int r3 = r1 + r2;
            return r3.ToString();

        }

        public string Multiply(string a, string b)
        {
            int r1 = Convert.ToInt32(a);
            int r2 = Convert.ToInt32(b);
            int r3 = r1 * r2;
            return r3.ToString();

        }

        public string Substract(string a, string b)
        {
            int r1 = Convert.ToInt32(a);
            int r2 = Convert.ToInt32(b);
            int r3 = r1 - r2;
            return r3.ToString();

        }

        public string Divide(string a, string b)
        {
            int r1 = Convert.ToInt32(a);
            int r2 = Convert.ToInt32(b);
            int r3 = r1 / r2;
            return r3.ToString();

        }

        
    }
}
