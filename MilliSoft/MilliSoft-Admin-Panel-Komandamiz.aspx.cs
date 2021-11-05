using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MilliSoft
{
    public partial class MilliSoft_Admin_Panel_Komandaiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                if (!IsPostBack)
                {
                    var dt = SQL.Execute($@"select * from Komanda where MuellimId = {id}");
                    if (dt.Rows.Count == 0)
                    {
                        Response.Redirect("MilliSoft-Admin-Panel-Home.aspx");
                    }
                    muellimad.Value = dt.Rows[0]["MuellimAd"].ToString();
                    muelliminfo.Value = dt.Rows[0]["MuellimInfo"].ToString();
                    muellimkecdiyifenn.Value = dt.Rows[0]["MuellimKecdiyiDers"].ToString();
                    muellimfacebook.Value = dt.Rows[0]["MuellimFacebook"].ToString();
                    muellimtwitter.Value = dt.Rows[0]["MuellimTwitter"].ToString();
                    muelliminstagram.Value = dt.Rows[0]["MuellimInstagram"].ToString();
                    muellimlinkedin.Value = dt.Rows[0]["MuellimLinkedin"].ToString();
                }
            }
        }

        protected void komandagonder_Click(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                string sekil = "";
                if (file.PostedFile.FileName.Length > 0)
                {
                    string PhotoName = "Photo" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second + DateTime.Now.Millisecond + Path.GetExtension(file.PostedFile.FileName);
                    file.PostedFile.SaveAs(Server.MapPath("../Assets/images/Komandamiz/" + PhotoName));
                    sekil = $" ,FennPhoto = N'{PhotoName}' ";
                }
                SQL.Execute($@"update Komanda set MuellimAd = N'{muellimad.Value}', MuellimInfo = N'{muelliminfo.Value}' {sekil} , MuellimFacebook = N'{muellimfacebook.Value}', MuellimTwitter = N'{muellimtwitter.Value}', MuellimInstagram = N'{muelliminstagram.Value}', MuellimLinkedin = N'{muellimlinkedin.Value}',  MuellimKecdiyiDers = N'{muellimkecdiyifenn.Value}' where MuellimId= {id}");

            }
            else
            {
                string PhotoName = "Photo" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second + DateTime.Now.Millisecond + Path.GetExtension(file.PostedFile.FileName);

                file.PostedFile.SaveAs(Server.MapPath("../Assets/images/Komandamiz/" + PhotoName));
                SQL.Execute($@"insert into Komanda values (N'{muellimad.Value}', N'{muelliminfo.Value}', N'{PhotoName}', N'{muellimfacebook.Value}' , N'{muellimtwitter.Value}' , N'{muelliminstagram.Value}' , N'{muellimlinkedin.Value}', N'{muellimkecdiyifenn.Value}')");

            }
            Response.Redirect("MilliSoft-Admin-Panel-Komanda-Cedvel.aspx");
        }
    }
}