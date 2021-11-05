<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-Paketler.aspx.cs" Inherits="MilliSoft.Milli_soft_I_Admin_Panel_I_Paketler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">Yeni paket daxil et</h2>

    <form runat="server">
        <div style="padding: 0 0 30px;">
            <div class="form-group" style="margin-left: 15px;">
                <p>Örtük şəkli</p>
                <div class="crm-profile-img-edit position-relative">
                    <img class="crm-profile-pic rounded-circle avatar-100" src="https://play-lh.googleusercontent.com/GkhngtFrSb3G9WXkWxJ9IRppbGVbNy7b_xyqa12Xa-Y3My_SXtsLamI5kR6or5zWGA=s180-rw" alt="profile-pic">
                    <div class="crm-p-image bg-primary">
                        <i class="las la-pen upload-button"></i>
                        <input class="file-upload" type="file" runat="server" id="file">
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
                <input type="text" class="form-control" placeholder="Fənnin adı" runat="server" id="fennad">
            </div>

            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text text-area">Fənn haqqında</span>
                </div>
                <textarea class="form-control" runat="server" id="fenninfo"></textarea>
            </div>

            <div class="input-group mb-4" style="padding-top: 25px;">
                <div class="input-group-prepend">
                    <span class="input-group-text">₼</span>
                </div>
                <input type="number" class="form-control" placeholder="Kurs qiyməti" runat="server" id="kursqiymet">
                <div class="input-group-append">
                </div>
            </div>

            <div class="input-group mb-4">
                <input type="text" class="form-control" placeholder="Tələbə sayı" runat="server" id="telebesay">
            </div>
            <asp:Button type="submit" class="btn btn-primary" Text="Göndər" runat="server" ID="paketgonder" OnClick="paketgonder_Click" />
        </div>
    </form>


</asp:Content>
