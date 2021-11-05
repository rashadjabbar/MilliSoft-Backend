using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MilliSoft
{
    public partial class MilliSoft_Admin_Panel_Elaqe_Melumatlari : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                if (!IsPostBack)
                {
                    var dt = SQL.Execute($@"select * from ElaqeMelumatlari where ElaqeMelumatlariId = {id}");
                    if (dt.Rows.Count == 0)
                    {
                        Response.Redirect("MilliSoft-Admin-Panel-Home.aspx");
                    }
                    tel.Value = dt.Rows[0]["Telefon"].ToString();
                    email.Value = dt.Rows[0]["Email"].ToString();
                    unvan.Value = dt.Rows[0]["Unvan"].ToString();
                }
            }
        }

        protected void elaqeinfogonder_Click(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                
                SQL.Execute($@"update ElaqeMelumatlari set Telefon = N'{tel.Value}', Email = N'{email.Value}', Unvan = N'{unvan.Value}' where ElaqeMelumatlariId= {id}");

            }
            else
            {
               
                SQL.Execute($@"insert into ElaqeMelumatlari values (N'{tel.Value}', N'{email.Value}', N'{unvan.Value}' )");

            }
            Response.Redirect("MilliSoft-Admin-Panel-Elaqe-Melumatlari-Cedvel.aspx");
        }
    }
}