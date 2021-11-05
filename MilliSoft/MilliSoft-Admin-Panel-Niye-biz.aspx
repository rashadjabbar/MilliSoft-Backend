<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Niye-biz.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_Niye_biz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Niyə biz?</h2>

    <form runat="server">
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text text-area">Niyə biz?</span>
        </div>
        <textarea class="form-control" id="niebiz" runat="server"></textarea>
    </div>
        <asp:Button  class="btn btn-primary" style="margin-top: 25px;" Text="Göndər" ID="niyebizgonder" runat="server" OnClick="niyebizgonder_Click"/>
    </form>
</asp:Content>
