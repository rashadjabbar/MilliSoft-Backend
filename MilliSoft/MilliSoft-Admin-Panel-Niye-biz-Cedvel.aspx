<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Niye-biz-Cedvel.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_Niye_biz_Cedvel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Haqqımızda bölməsi</h2>

    <div class="table-editable">

        <table class="table table-bordered table-responsive-md table-striped text-center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Niyə Biz?</th>
                    <th>Düzəlt</th>
                </tr>
            </thead>
            <tbody id="niyebizcontent" runat="server">
               
            </tbody>
        </table>
    </div>
</asp:Content>
