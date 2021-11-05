<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Komandamiz.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_Komandaiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Personal daxil et</h2>

    <form runat="server">
        <div style="padding: 0 0 30px;">

            <div class="form-group" style="margin-left: 15px;">
                <p>Müəllimin şəkli</p>
                <div class="crm-profile-img-edit position-relative">
                    <img class="crm-profile-pic rounded-circle avatar-100" src="images/user/1.jpg" alt="profile-pic">
                    <div class="crm-p-image bg-primary">
                        <i class="las la-pen upload-button"></i>
                        <input class="file-upload" type="file" id="file" runat="server">
                    </div>
                </div>
                <div class="img-extension mt-3">
                    <div class="d-inline-block align-items-center">
                        <span>Yalnız</span>
                        <a href="">.jpg</a>
                        <span>qəbul olunur</span>
                    </div>
                </div>
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Müəllimin adı və Soyadı" id="muellimad" runat="server">
            </div>

            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text text-area">Müəllim haqqında</span>
                </div>
                <textarea class="form-control" id="muelliminfo" runat="server"></textarea>
            </div>

            <div class="input-group mb-4" style="padding-top: 25px;">
                <input type="text" class="form-control" placeholder="Keçdiyi fənn" id="muellimkecdiyifenn" runat="server">
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Facebook hesab linki" id="muellimfacebook" runat="server">
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Twitter hesab linki" id="muellimtwitter" runat="server">
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Instagram hesab linki" id="muelliminstagram" runat="server">
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Linkedin hesab linki" id="muellimlinkedin" runat="server">
            </div>
            <asp:Button class="btn btn-primary" Text="Göndər" ID="komandagonder" runat="server" OnClick="komandagonder_Click" />
        </div>
    </form>



</asp:Content>
