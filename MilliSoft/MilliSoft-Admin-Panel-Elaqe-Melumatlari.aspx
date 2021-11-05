<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Elaqe-Melumatlari.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_Elaqe_Melumatlari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Əlaqə məlumatları daxil et</h2>
    <form runat="server">
        <div style="padding: 0 0 30px;">
            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Telefon" runat="server" id="tel">
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Email" runat="server" id="email">
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Ünvan" runat="server" id="unvan">
            </div>

            <asp:Button runat="server" Text="Göndər" class="btn btn-primary" ID="elaqeinfogonder" OnClick="elaqeinfogonder_Click" />
        </div>
    </form>
</asp:Content>
