using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRG4_MG2P2_0320190026_B2.App_Code
{
    public class KursConvert
    {
        public double UsdToIdr(double value)
        {
            return value * 14677.73;
        }

        public double EurToIdr(double value)
        {
            return value * 17365.00;
        }

        public double JpyToIdr(double value)
        {
            return value * 138.97;
        }

        public double KrwToIdr(double value)
        {
            return value * 12.84;
        }

        public double GbpToIdr(double value)
        {
            return value * 19117.61;
        }
    }
}