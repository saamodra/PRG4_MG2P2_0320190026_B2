<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewGuestbook.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.ViewGuestbook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="form-container">
    <div class="form-title">
      <a href="guestbook.aspx" class="btn-purple-outline-1 font-sm">Back</a>
      <h2>View Guest Book</h2>
    </div>

    <textarea class="form-control" runat="server" rows="10" id="txtGuest"></textarea>
  </div>

  <script type="text/javascript">
      document.addEventListener("DOMContentLoaded", () => {
        changeNav(2);
        changeLogo(1);
      });
  </script>
</asp:Content>
