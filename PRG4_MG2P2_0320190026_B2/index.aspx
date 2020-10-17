<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
   <header id="home-header">
      <nav>
        <div class="navbar-brand">
          <a href="index.aspx">SM.</a>
        </div>
      </nav>
  </header>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h1>Welcome to My Personal Homepage</h1>

  <div class="menu">
    <a href="aboutme.aspx">ABOUT ME</a>
    <a href="links.aspx">FAVORITE LINKS</a>
    <a href="guestbook.aspx">GUESTBOOK</a>
    <a href="0320190026KonversiTemperatur.aspx">TEMP. CONVERT</a>
    <a href="0320190026_KursConverter.aspx">KURS. CONVERT</a>
  </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
  <xsam:Footer runat="server"/>

  <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
      changeClass("body", "index");
    });
  </script>
</asp:Content>

