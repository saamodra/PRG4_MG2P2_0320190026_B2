<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="aboutme.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.aboutme" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
   <xsam:NavbarWhite runat="server" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="grid">
    <div>
      <div class="profile">
      </div>
    </div>

    <div class="biodata">
      <h1 class="page-title">Me, Myself, and I</h1>

      <h2 class="sub-title">Biodata</h2>

      <table>
        <tr>
          <td>nama</td>
          <td>:</td>
          <td>Samodra</td>
        </tr>
        <tr>
          <td>tempat, tanggal lahir</td>
          <td>:</td>
          <td>Ponorogo, 8 Desember 2000</td>
        </tr>
        <tr>
          <td>hobi</td>
          <td>:</td>
          <td>Ngegame</td>
        </tr>
      </table>

    </div>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
  <xsam:Footer runat="server"/>
  
  <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
      changeClass("body", "about-me");
    });
  </script>
</asp:Content>