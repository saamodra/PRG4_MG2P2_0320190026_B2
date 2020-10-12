<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="0320190026_KursConverter.aspx.cs" Inherits="PRG4_MG2P2_0320190026_B2._0320190026_KursConverter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="form-container">
    <h2 class="form-title">Konversi Kurs</h2>
    <form runat="server">
      <div class="d-flex align-items-center">
          <input type="text" runat="server" class="form-control" id="txtValue" onkeypress="return isNumberKey(event)"/>
          <select class="form-control" id="cmbKurs" runat="server">
            <option value="Pilih Kurs" hidden="hidden"></option>
            <option value="USD">USD</option>
            <option value="EUR">EUR</option>
            <option value="JPY">JPY</option>
            <option value="KRW">KRW</option>
            <option value="GBP">GBP</option>
          </select>
          <asp:Button runat="server" id="btnConvert" CssClass="btn btn-purple" Text="Convert" OnClick="btnConvert_Click" />
          <input type="text" runat="server" class="form-control" id="txtResult" readonly="true"/>
          <label>IDR</label>
          
      </div>
    </form>
  </div>

  <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
      changeNav(2);
      changeLogo(1);
    });
  </script>
</asp:Content>
