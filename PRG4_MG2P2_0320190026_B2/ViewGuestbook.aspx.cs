using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRG4_MG2P2_0320190026_B2
{
    public partial class ViewGuestbook : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string file = "~/files/guestbook.txt";
            string[] str = null;
            if (File.Exists(Server.MapPath(file)))
            {
                str = File.ReadAllLines(Server.MapPath(file));
            }

            foreach (string s in str)
            {
                txtGuest.Value += s + "\n";
            }
        }
    }
}