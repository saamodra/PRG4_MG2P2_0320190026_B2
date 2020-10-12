<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="links.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.links" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>My Favorite Links</h1>
      
    <div class="menu">
        <a href="http://www.google.com" class="text-purple">GOOGLE</a>
        <a href="http://www.wikipedia.org" class="text-purple">WIKIPEDIA</a>
        <a href="http://elearning.polman.astra.ac.id" class="text-purple">INOCENT</a>
    </div>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", () => {
          changeNav(2);
          changeLogo(1);
        });
    </script>
</asp:Content>
