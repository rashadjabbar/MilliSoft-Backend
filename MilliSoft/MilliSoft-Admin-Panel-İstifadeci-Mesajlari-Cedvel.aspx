<%@ Page Title="" Language="C#" MasterPageFile="~/Milli soft I Admin Panel.Master" AutoEventWireup="true" CodeBehind="MilliSoft-Admin-Panel-İstifadeci-Mesajlari-Cedvel.aspx.cs" Inherits="MilliSoft.MilliSoft_Admin_Panel_İstifadeci_Mesajlari_Cedvel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: poppins,sans-serif; margin-bottom: 25px">İstifadəçi mesajları</h2>

    <div class="table-editable" >
        
        <table class="table table-bordered table-responsive-md table-striped text-center" >
            <thead style=" background: white;">
                <tr>
                    <th>ID</th>
                    <th>İstifadəçi adı</th>
                    <th>İstifadəçi soyadı</th>
                    <th>Email ünvanı</th>
                    <th>Telefon nömrəsi</th>
                    <th>İstifadəçi mesajı</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody runat="server" id="istifadecimesajlari">
                
            </tbody>
        </table>
    </div>
    <script>
        (function ($) {
            $.fn.fixMe = function () {
                return this.each(function () {
                    var $this = $(this),
                        $t_fixed;
                    function init() {
                        $this.wrap('<div class="table-editable" />');
                        $t_fixed = $this.clone();
                        $t_fixed.find("tbody").remove().end().addClass("theadfixed").insertBefore($this);
                        resizeFixed();
                    }
                    function resizeFixed() {
                        $t_fixed.width($this.outerWidth());
                        $t_fixed.find("th").each(function (index) {
                            $(this).css("width", $this.find("th").eq(index).outerWidth() + "px");
                        });
                    }
                    function scrollFixed() {
                        var offsetY = $(this).scrollTop(),
                            offsetX = $(this).scrollLeft(),
                            tableOffsetTop = $this.offset().top,
                            tableOffsetBottom = tableOffsetTop + $this.height() - $this.find("thead").height(),
                            tableOffsetLeft = $this.offset().left;
                        if (offsetY < tableOffsetTop || offsetY > tableOffsetBottom)
                            $t_fixed.hide();
                        else if (offsetY >= tableOffsetTop && offsetY <= tableOffsetBottom && $t_fixed.is(":hidden"))
                            $t_fixed.show();
                        $t_fixed.css("left", tableOffsetLeft - offsetX + "px");
                    }
                    $(window).resize(resizeFixed);
                    $(window).scroll(scrollFixed);
                    init();
                });
            };
        })(jQuery);

        $(document).ready(function () {
            $("table").fixMe();
            $(".theadup").click(function () {
                $('html, body').animate({
                    scrollTop: 0
                }, 2000);
            });
        });
    </script>
</asp:Content>
