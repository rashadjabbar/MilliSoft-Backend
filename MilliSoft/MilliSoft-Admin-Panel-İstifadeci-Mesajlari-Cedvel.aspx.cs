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
    public partial class MilliSoft_Admin_Panel_İstifadeci_Mesajlari_Cedvel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["silid"];
            if (id != null)
            {
                SQL.Execute($@"delete IstifadeciMesajlari where IstifadeciId = ${id}");
                Response.Redirect("MilliSoft-Admin-Panel-İstifadeci-Mesajlari-Cedvel.aspx");
            }

            var dt = SQL.Execute($@"select * from IstifadeciMesajlari ");
            StringBuilder sb = new StringBuilder();
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append($@"
                            <tr>
                                <td>{dt.Rows.IndexOf(dr) + 1}</td>
                                <td>{dr["IstifadeciAd"]}</td>
                                <td>{dr["IstifadeciSoyad"]}</td>
                                <td>{dr["IstifadeciEmail"]}</td>
                                <td>{dr["IstifadeciTelefon"]}</td>
                                <td>{dr["IstifadeciMesaji"]}</td>
                                
                                <td>
                                    <span class='table-remove'>
                                        <a href='MilliSoft-Admin-Panel-İstifadeci-Mesajlari-Cedvel.aspx?silid={dr[0]}'>
                                            <button type='button' class='btn bg-danger-light btn-rounded btn-sm my-0'>Sil</button>
                                        </a>
                                    </span>
                                </td>
                            </tr>");
            }
            istifadecimesajlari.InnerHtml = sb.ToString();
        }
    }
}