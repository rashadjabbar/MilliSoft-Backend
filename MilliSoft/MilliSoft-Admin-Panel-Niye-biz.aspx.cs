using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MilliSoft
{
    public partial class MilliSoft_Admin_Panel_Niye_biz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                if (!IsPostBack)
                {
                    var dt = SQL.Execute($@"select * from NiyeBiz where NiyeId = {id}");
                    if (dt.Rows.Count == 0)
                    {
                        Response.Redirect("MilliSoft-Admin-Panel-Home.aspx");
                    }
                    niebiz.Value = dt.Rows[0]["NiyeBizContent"].ToString();
                }
            }
        }

        protected void niyebizgonder_Click(object sender, EventArgs e)
        {
            string id = Request.Params["editid"];
            if (id != null)
            {
                SQL.Execute($@"update NiyeBiz set NiyeBizContent = N'{niebiz.Value}' where NiyeId= {id}");
            }
            else
            {
                SQL.Execute($@"insert into NiyeBiz values (N'{niebiz.Value}')");
            }
            Response.Redirect("MilliSoft-Admin-Panel-Niye-biz-Cedvel.aspx");
        }
    }
}