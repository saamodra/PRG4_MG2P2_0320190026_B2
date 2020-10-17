<%@ Page Title="View GuestBook" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewGuestbook.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2.ViewGuestbook" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
   <xsam:NavbarPurple runat="server" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="form-container">
    <div class="form-title">
      <a href="guestbook.aspx" class="btn-purple-outline-1 font-sm">Back</a>
      <h2>View Guest Book</h2>
    </div>

    <textarea class="form-control" runat="server" rows="10" id="txtGuest" readonly="readonly"></textarea>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
  <xsam:Footer runat="server"/>
</asp:Content>
