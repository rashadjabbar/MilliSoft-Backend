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
    public partial class MilliSoft_Admin_Panel_Paketler_Cedvel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            {
                string id = Request.Params["silid"];
                if (id != null)
                {
                    SQL.Execute($@"delete Paketler where FennId = ${id}");
                    Response.Redirect("MilliSoft-Admin-Panel-Paketler-Cedvel.aspx");
                }




                var dt = SQL.Execute($@"select * from Paketler ");
                StringBuilder sb = new StringBuilder();
                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append($@"
                            <tr>
                                <td>{dt.Rows.IndexOf(dr) + 1}</td>
                                <td>{dr["FennAd"]}</td>
                                <td>{dr["FennInfo"]}</td>
                                <td>{dr["FennQiymet"]}</td>
                                <td>{dr["FennTelebeSayi"]}</td>
                                <td>{dr["FennPhoto"]}</td>
                                <td>
                                    <span>
                                        <a href='MilliSoft-Admin-Panel-Paketler.aspx?editid={dr[0]}'>
                                            <button type='button' class='btn btn-success btn-sm my-0'>Düzəlt</button>
                                        </a>
                                    </span>
                                </td>
                                <td>
                                    <span class='table-remove'>
                                        <a href='MilliSoft-Admin-Panel-Paketler-Cedvel.aspx?silid={dr[0]}'>
                                            <button onclick='return confirm('Bu sətiri silmək istədiyinizdən əminsinizmi?')'  class='btn bg-danger-light btn-rounded btn-sm my-0'>Sil</button>
                                        </a>
                                    </span>
                                </td>
                            </tr>");
                }
                paketlist.InnerHtml = sb.ToString();
            }
        }
    }
}