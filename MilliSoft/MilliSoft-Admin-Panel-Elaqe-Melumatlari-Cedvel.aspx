<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Elaqe-Melumatlari-Cedvel.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_Elaqe_Melumatlari_Cedvel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Əlaqə məlumatları</h2>

    <div class="table-editable">
        <span class="table-add float-right mb-3 mr-2">
            <a href="MilliSoft-Admin-Panel-Elaqe-Melumatlari.aspx" style="color: white;">
            <button class="btn btn-sm bg-primary">
                +<span class="pl-1">Yeni</span>
            </button></a>
        </span>
        <table class="table table-bordered table-responsive-md table-striped text-center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Telefon</th>
                    <th>Email</th>
                    <th>Unvan</th>
                    <th>Düzəlt</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody id="elaqemelumatlari" runat="server">
               
            </tbody>
        </table>
    </div>
</asp:Content>
