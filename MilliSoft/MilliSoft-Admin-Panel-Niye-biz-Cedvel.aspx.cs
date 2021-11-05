using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MilliSoft
{
    public partial class MilliSoft_Admin_Panel_Niye_biz_Cedvel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            var dt = SQL.Execute($@"select * from NiyeBiz ");
            StringBuilder sb = new StringBuilder();
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append($@"
                            <tr>
                                <td>{dt.Rows.IndexOf(dr) + 1}</td>
                                <td>{dr["NiyeBizContent"]}</td>
                                <td>
                                    <span>
                                        <a href='MilliSoft-Admin-Panel-Niye-biz.aspx?editid={dr[0]}'>
                                            <button type='button' class='btn btn-success btn-sm my-0'>Düzəlt</button>
                                        </a>
                                    </span>
                                </td>
                            </tr>");
            }
            niyebizcontent.InnerHtml = sb.ToString();
        }
    }
}