using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MilliSoft
{
    public partial class Milli_soft_I_Admin_Panel_I_Paketler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                if (!IsPostBack)
                {
                    var dt = SQL.Execute($@"select * from Paketler where FennId = {id}");
                    if (dt.Rows.Count == 0)
                    {
                        Response.Redirect("MilliSoft-Admin-Panel-Home.aspx");
                    }
                    fennad.Value = dt.Rows[0]["FennAd"].ToString();
                    fenninfo.Value = dt.Rows[0]["FennInfo"].ToString();
                    kursqiymet.Value = dt.Rows[0]["FennQiymet"].ToString();
                    telebesay.Value = dt.Rows[0]["FennTelebeSayi"].ToString();
                }
            }
        }

        protected void paketgonder_Click(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                string sekil = "";
                if (file.PostedFile.FileName.Length > 0)
                {
                    string PhotoName = "Photo" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second + DateTime.Now.Millisecond + Path.GetExtension(file.PostedFile.FileName);
                    file.PostedFile.SaveAs(Server.MapPath("../Assets/images/Paketler/" + PhotoName));
                    sekil = $" ,FennPhoto = '{PhotoName}' ";
                }
                SQL.Execute($@"update Paketler set FennAd = N'{fennad.Value}', FennInfo = N'{fenninfo.Value}', FennQiymet = {kursqiymet.Value}, FennTelebeSayi = {telebesay.Value} {sekil} where FennId= {id}");

            }
            else
            {
                string PhotoName = "Photo" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second + DateTime.Now.Millisecond + Path.GetExtension(file.PostedFile.FileName);

                file.PostedFile.SaveAs(Server.MapPath("Assets/images/Paketler/" + PhotoName));
                SQL.Execute($@"insert into Paketler values (N'{fennad.Value}', N'{fenninfo.Value}', {kursqiymet.Value}, {telebesay.Value} , N'{PhotoName}')");

            }
            Response.Redirect("MilliSoft-Admin-Panel-Paketler-Cedvel.aspx");
        }
    }
}