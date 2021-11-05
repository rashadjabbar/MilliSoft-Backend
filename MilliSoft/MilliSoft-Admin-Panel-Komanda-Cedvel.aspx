<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Komanda-Cedvel.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_Komanda_Cedvel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Komandanın siyahısı</h2>

    <div class="table-editable">
        <span class="table-add float-right mb-3 mr-2">
            <a href="MilliSoft-Admin-Panel-Komandamiz.aspx" style="color: white;">
                <button class="btn btn-sm bg-primary">
                    +<span class="pl-1">Yeni</span>
                </button>
            </a>
        </span>
        <table class="table table-bordered table-responsive-md table-striped text-center" style="width: 100%; max-width: 100%; margin-bottom: 1rem; display: block; overflow-x: auto;">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Müəllim</th>
                    <th>Keçdiyi fənn</th>
                    <th>Müəllimin şəkli</th>
                    <th>Müəllim haqqında</th>
                    <th>Facebook hesabı</th>
                    <th>Twitter hesabı</th>
                    <th>İnstagram hesabı</th>
                    <th>Linkedin hesabı</th>
                    <th>Düzəlt</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody id="komandalist" runat="server">
            </tbody>
        </table>
    </div>
</asp:Content>
