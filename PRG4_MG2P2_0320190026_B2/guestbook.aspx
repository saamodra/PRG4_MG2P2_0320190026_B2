<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="guestbook.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.guestbook" %>

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
          <td style="padding-right: 100px;">Nama</td>
          <td></td>
          <td class="d-flex">
            <asp:TextBox runat="server" CssClass="form-control" ID="txtNama"/>
          </td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td></td>
          <td class="d-flex">
            <textarea name="alamat" runat="server" id="txtAlamat" cols="35" rows="2" class="form-control"></textarea></td>
        </tr>
        <tr>
          <td>Provinsi</td>
          <td></td>
          <td class="d-flex">
            <select name="provinsi" id="txtProvinsi" runat="server" class="form-control">
              <option value="Pilih Provinsi" hidden="hidden">Pilih Provinsi</option>
              <option value="DKI Jakarta">DKI Jakarta</option>
              <option value="Jawa Barat">Jawa Barat</option>
              <option value="Jawa Tengah">Jawa Tengah</option>
              <option value="Jawa Timur">Jawa Timur</option>
              <option value="Bali">Bali</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>Jenis Kelamin</td>
          <td></td>
          <td class="d-flex">
            <asp:RadioButtonList ID="rdJenkel" runat="server" RepeatLayout="Flow">
                <asp:ListItem Value="Pria"> Pria</asp:ListItem>
                <asp:ListItem Value="Wanita"> Wanita</asp:ListItem>
            </asp:RadioButtonList>
          </td>
        </tr>
        <tr>
          <td>Tanggal Lahir</td>
          <td></td>
          <td class="d-flex">
            <select name="hari" runat="server" id="tglLahir" class="form-control">
              <option value="Pilih Hari" hidden="hidden">Pilih Hari</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
              <option value="24">24</option>
              <option value="25">25</option>
              <option value="26">26</option>
              <option value="27">27</option>
              <option value="28">28</option>
              <option value="29">29</option>
              <option value="30">30</option>
              <option value="31">31</option>
            </select>
            <select name="bulan" runat="server" id="bulanLahir" class="form-control">
              <option value="Pilih Bulan" hidden="hidden">Pilih Bulan</option>
              <option value="Januari">Januari</option>
              <option value="Februari">Februari</option>
              <option value="Maret">Maret</option>
              <option value="April">April</option>
              <option value="Mei">Mei</option>
              <option value="Juni">Juni</option>
              <option value="Juli">Juli</option>
              <option value="Agustus">Agustus</option>
              <option value="September">September</option>
              <option value="Oktober">Oktober</option>
              <option value="November">November</option>
              <option value="Desember">Desember</option>
            </select>
            <select name="tahun" runat="server" id="tahunLahir" class="form-control">
              <option value="Pilih Tahun" hidden="hidden">Pilih Tahun</option>
              <option value="1998">1998</option>
              <option value="2000">2000</option>
              <option value="2001">2001</option>
              <option value="2002">2002</option>
              <option value="2003">2003</option>
              <option value="2004">2004</option>
              <option value="2005">2005</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>Email</td>
          <td></td>
          <td class="d-flex">
            <input type="email" runat="server" class="form-control" id="txtEmail"/>
          </td>
        </tr>
        <tr>
          <td>Pesan</td>
          <td></td>
          <td class="d-flex">
            <textarea name="pesan" runat="server" id="txtPesan" cols="35" rows="2" class="form-control"></textarea>
          </td>
        </tr>
        <tr>
          <td colspan="2"></td>
          <td class="d-flex">
            <asp:Button runat="server" id="btnConvert" CssClass="btn btn-purple" Text="Kirim" OnClick="btnKirim_Click"/>
            <asp:Button runat="server" id="btnBatal" CssClass="btn btn-purple-outline" Text="Batal" OnClick="btnBatal_Click"/>
          </td>
        </tr>
      </table>
    </form>
  </div>

  <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
      const alert = document.getElementById('<%= alert.ClientID %>');

      changeNav(2);
      changeLogo(1);


      if (alert.style.display == "block") {
        setTimeout(function () {
          alert.style.display = "none";
        }, 3000);
      } 
      
    });
  </script>
</asp:Content>
