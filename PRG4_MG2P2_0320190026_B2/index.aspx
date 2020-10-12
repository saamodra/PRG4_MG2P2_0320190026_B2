<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h1>Welcome to My Personal Homepage</h1>

  <div class="menu">
    <a href="aboutme.aspx">ABOUT ME</a>
    <a href="links.aspx">FAVORITE LINKS</a>
    <a href="guestbook.aspx">GUESTBOOK</a>
    <a href="0320190026KonversiTemperatur.aspx">TEMP. CONVERT</a>
  </div>

  <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
      changeClass("body", "index");
      changeNav(1);
    });
  </script>
</asp:Content>
