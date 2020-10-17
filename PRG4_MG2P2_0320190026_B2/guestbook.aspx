<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="guestbook.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.guestbook" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
   <xsam:NavbarPurple runat="server" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="form-container">
    <div class="form-title">
      <h2>Guest Book</h2>
      <a href="ViewGuestbook.aspx" class="btn-purple-outline-1 font-sm">View Guestbook</a>
    </div>
    <div class="alert alert-success d-none" id="alert" runat="server" role="alert">
      Data Berhasil disimpan
    </div>
    <form runat="server">
      <table class="w-100">
        <tr>
          <td class="label">Nama</td>
          <td class="d-flex">
            <asp:TextBox runat="server" CssClass="form-control" ID="txtNama"/>
          </td>
          <td class="validation-error">
            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
              ControlToValidate="txtNama" text="*"
              ErrorMessage="Nama harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td class="label">Alamat</td>
          <td class="d-flex">
            <textarea name="alamat" runat="server" id="txtAlamat" cols="35" rows="2" class="form-control"></textarea>
          </td>
          <td class="validation-error">
            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
              ControlToValidate="txtAlamat" text="*"
              ErrorMessage="Alamat harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td class="label">Provinsi</td>
          <td class="d-flex">
            <asp:DropDownList ID="cmbProv" runat="server" class="form-control">  
                <asp:ListItem Value="">Pilih Provinsi</asp:ListItem>  
                <asp:ListItem Value="DKI Jakarta">DKI Jakarta</asp:ListItem>  
                <asp:ListItem Value="Jawa Barat">Jawa Barat</asp:ListItem>  
                <asp:ListItem Value="Jawa Tengah">Jawa Tengah</asp:ListItem>  
                <asp:ListItem Value="Jawa Timur">Jawa Timur</asp:ListItem>  
            </asp:DropDownList>  
          </td>
          <td>
            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
              ControlToValidate="cmbProv" text="*"
              ErrorMessage="Provinsi harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td class="label">Jenis Kelamin</td>
          <td class="d-flex">
            <asp:RadioButtonList ID="rdJenkel" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                <asp:ListItem Value="Pria"> Pria</asp:ListItem>
                <asp:ListItem Value="Wanita"> Wanita</asp:ListItem>
            </asp:RadioButtonList>
          </td>
          <td>
            <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
              ControlToValidate="rdJenkel" text="*"
              ErrorMessage="Jenis kelamin harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td class="label">Tanggal Lahir</td>
          <td class="d-flex">
            <asp:DropDownList ID="tglLahir1" runat="server" class="form-control">  
              <asp:ListItem Value="">Pilih Hari</asp:ListItem>
              <asp:ListItem Value="1">1</asp:ListItem>
              <asp:ListItem Value="2">2</asp:ListItem>
              <asp:ListItem Value="3">3</asp:ListItem>
              <asp:ListItem Value="4">4</asp:ListItem>
              <asp:ListItem Value="5">5</asp:ListItem>
              <asp:ListItem Value="6">6</asp:ListItem>
              <asp:ListItem Value="7">7</asp:ListItem>
              <asp:ListItem Value="8">8</asp:ListItem>
              <asp:ListItem Value="9">9</asp:ListItem>
              <asp:ListItem Value="10">10</asp:ListItem>
              <asp:ListItem Value="11">11</asp:ListItem>
              <asp:ListItem Value="12">12</asp:ListItem>
              <asp:ListItem Value="13">13</asp:ListItem>
              <asp:ListItem Value="14">14</asp:ListItem>
              <asp:ListItem Value="15">15</asp:ListItem>
              <asp:ListItem Value="16">16</asp:ListItem>
              <asp:ListItem Value="17">17</asp:ListItem>
              <asp:ListItem Value="18">18</asp:ListItem>
              <asp:ListItem Value="19">19</asp:ListItem>
              <asp:ListItem Value="20">20</asp:ListItem>
              <asp:ListItem Value="21">21</asp:ListItem>
              <asp:ListItem Value="22">22</asp:ListItem>
              <asp:ListItem Value="23">23</asp:ListItem>
              <asp:ListItem Value="24">24</asp:ListItem>
              <asp:ListItem Value="25">25</asp:ListItem>
              <asp:ListItem Value="26">26</asp:ListItem>
              <asp:ListItem Value="27">27</asp:ListItem>
              <asp:ListItem Value="28">28</asp:ListItem>
              <asp:ListItem Value="29">29</asp:ListItem>
              <asp:ListItem Value="30">30</asp:ListItem>
              <asp:ListItem Value="31">31</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
              ControlToValidate="tglLahir1" text="*"
              ErrorMessage="Provinsi harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:DropDownList runat="server" ID="bulanLahir1" class="form-control">
              <asp:ListItem value="">Pilih Bulan</asp:ListItem>
              <asp:ListItem value="Januari">Januari</asp:ListItem>
              <asp:ListItem value="Februari">Februari</asp:ListItem>
              <asp:ListItem value="Maret">Maret</asp:ListItem>
              <asp:ListItem value="April">April</asp:ListItem>
              <asp:ListItem value="Mei">Mei</asp:ListItem>
              <asp:ListItem value="Juni">Juni</asp:ListItem>
              <asp:ListItem value="Juli">Juli</asp:ListItem>
              <asp:ListItem value="Agustus">Agustus</asp:ListItem>
              <asp:ListItem value="September">September</asp:ListItem>
              <asp:ListItem value="Oktober">Oktober</asp:ListItem>
              <asp:ListItem value="November">November</asp:ListItem>
              <asp:ListItem value="Desember">Desember</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
              ControlToValidate="bulanLahir1"
              ErrorMessage="Bulan lahir harus diisi."
              Text="*"
              ForeColor="Red"></asp:RequiredFieldValidator> 
            <asp:DropDownList runat="server" ID="tahunLahir1" CssClass="form-control">
              <asp:ListItem value="">Pilih Tahun</asp:ListItem>
              <asp:ListItem value="1998">1998</asp:ListItem>
              <asp:ListItem value="2000">2000</asp:ListItem>
              <asp:ListItem value="2001">2001</asp:ListItem>
              <asp:ListItem value="2002">2002</asp:ListItem>
              <asp:ListItem value="2003">2003</asp:ListItem>
              <asp:ListItem value="2004">2004</asp:ListItem>
              <asp:ListItem value="2005">2005</asp:ListItem>
            </asp:DropDownList>
          </td>
          <td>
            <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
              ControlToValidate="tahunLahir1"
              ErrorMessage="Tahun lahir harus diisi."
              Text="*"
              ForeColor="Red"></asp:RequiredFieldValidator> 
          </td>
        </tr>
        <tr>
          <td class="label">Email</td>
          <td class="d-flex">
            <asp:TextBox ID="emailText" CssClass="form-control" runat="server"></asp:TextBox> 
          </td>
          <td>
            <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
              ControlToValidate="emailText"
              text="*" ErrorMessage="Email harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator> 
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailText"  text="*"
              ErrorMessage="Format email salah" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
            </asp:RegularExpressionValidator>
          </td>
        </tr>
        <tr>
          <td class="label">Pesan</td>
          <td class="d-flex">
            <textarea name="pesan" runat="server" id="txtPesan" cols="35" rows="2" class="form-control"></textarea>
          </td>
          <td>
            <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
              ControlToValidate="txtPesan" text="*"
              ErrorMessage="Pesan harus diisi."
              ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td></td>
          <td class="d-flex">
            <asp:Button runat="server" id="btnConvert" CssClass="btn btn-purple" Text="Kirim" OnClick="btnKirim_Click"/>
            <asp:Button runat="server" id="btnBatal" CssClass="btn btn-purple-outline" Text="Batal" OnClick="btnBatal_Click"/>
          </td>
        </tr>
        <tr>
          <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" 
              HeaderText="Following error occurs....." 
              runat="server" ShowMessageBox="false" DisplayMode="BulletList" 
              ShowSummary="true" CssClass="alert alert-danger p-alert"
              ForeColor="Red" />
          </td>
        </tr>
      </table>
    </form>
  </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
  <xsam:Footer runat="server"/>
  
  <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
      const alert = document.getElementById('<%= alert.ClientID %>');

      if (alert.style.display == "block") {
        setTimeout(function () {
          alert.style.display = "none";
        }, 3000);
      }

    });
  </script>
</asp:Content>