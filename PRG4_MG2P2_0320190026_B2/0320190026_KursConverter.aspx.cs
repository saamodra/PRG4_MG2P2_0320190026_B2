using PRG4_MG2P2_0320190026_B2.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRG4_MG2P2_0320190026_B2
{
    public partial class _0320190026_KursConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double val = Convert.ToDouble(txtValue.Value);
            KursConvert kursConvert = new KursConvert();

            switch (cmbKurs.Value)
            {
                case "USD":
                    txtResult.Value = kursConvert.UsdToIdr(val).ToString(); 
                    break;
                case "EUR":
                    txtResult.Value = kursConvert.EurToIdr(val).ToString();
                    break;
                case "JPY":
                    txtResult.Value = kursConvert.JpyToIdr(val).ToString();
                    break;
                case "KRW":
                    txtResult.Value = kursConvert.KrwToIdr(val).ToString();
                    break;
                case "GBP":
                    txtResult.Value = kursConvert.GbpToIdr(val).ToString();
                    break;
                default:
                    txtResult.Value = "Kurs tidak dikenali";
                    break;
            }

        }
    }
}