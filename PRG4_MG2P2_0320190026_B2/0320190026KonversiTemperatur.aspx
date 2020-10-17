<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="0320190026KonversiTemperatur.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2._0320190026KonversiTemperatur" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
   <xsam:NavbarPurple runat="server" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="form-container">
    <h2 class="form-title">Celcius to Fahrenheit</h2>
    <form runat="server">
      <table>
        <tr>
          <td style="padding-right: 100px;">Celcius</td>
          <td></td>
          <td class="d-flex">
            <asp:TextBox runat="server" CssClass="form-control" ID="txtCelcius" onkeypress="return isNumberKey(event)"/>
          </td>
        </tr>
        <tr>
          <td colspan="2"></td>
          <td class="d-flex">
            <asp:Button runat="server" id="btnConvert" CssClass="btn btn-purple" Text="Convert" OnClick="btnConvert_Click"/>
          </td>
        </tr>
        <tr>
          <td style="padding-right: 100px;">Fahrenheit</td>
          <td></td>
          <td class="d-flex">
            <asp:TextBox runat="server" CssClass="form-control" ReadOnly="true" ID="txtFahrenheit"/>
          </td>
        </tr>
      </table>
    </form>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
  <xsam:Footer runat="server"/>
</asp:Content>

