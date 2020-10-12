using PRG4_MG2P2_0320190026_B2.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRG4_MG2P2_0320190026_B2
{
    public partial class _0320190026KonversiTemperatur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            TempConvert tempConvert = new TempConvert();

            txtFahrenheit.Text = tempConvert.Convert(Convert.ToDouble(txtCelcius.Text)).ToString();
        }
    }
}