using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace PRG4_MG2P2_0320190026_B2
{
    public partial class guestbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnKirim_Click(object sender, EventArgs e)
        {
            string text = $"{txtNama.Text}|{txtEmail.Value}|{txtAlamat.Value}";
            File.AppendAllText(Server.MapPath("~/files/guestbook.txt"), string.Format("{0}{1}", text, Environment.NewLine));
            alert.Style.Add("display", "block");
            clearText();
        }

        private void clearText()
        {
            txtAlamat.Value = "";
            txtEmail.Value = "";
            txtNama.Text = "";
            txtProvinsi.Value = "Pilih Provinsi";
            rdJenkel.ClearSelection();
            tahunLahir.Value = "Pilih Tahun";
            bulanLahir.Value = "Pilih Bulan";
            tglLahir.Value = "Pilih Hari";
            txtPesan.Value = "";
        }

        protected void btnBatal_Click(object sender, EventArgs e)
        {
            clearText();
        }
    }
}