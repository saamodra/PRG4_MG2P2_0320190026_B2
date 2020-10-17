using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;

namespace PRG4_MG2P2_0320190026_B2
{
    public partial class guestbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnKirim_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;
            string text = $"{txtNama.Text}|{emailText.Text}|{txtAlamat.Value}";
            File.AppendAllText(Server.MapPath("~/files/guestbook.txt"), string.Format("{0}{1}", text, Environment.NewLine));
            alert.Style.Add("display", "block");
            clearText();
        }

        private void clearText()
        {
            txtAlamat.Value = "";
            emailText.Text = "";
            txtNama.Text = "";
            cmbProv.SelectedIndex = 0;
            tglLahir1.SelectedIndex = 0;
            txtPesan.Value = "";
            rdJenkel.ClearSelection();
        }

        protected void btnBatal_Click(object sender, EventArgs e)
        {
            clearText();
        }
    }
}