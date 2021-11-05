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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

			/// PAKETLER ///
            var paketler = SQL.Execute("select * from Paketler");
            StringBuilder paketcontent = new StringBuilder();
            foreach (DataRow dr in paketler.Rows)
            {
				paketcontent.Append($@"
                        <div class='cource-block col-lg-4 col-md-6 col-sm-12'>
							<div class='inner-box'>
								<div class='image'>
									<a href='#'><img src='../Assets/images/Paketler/{dr["FennPhoto"]}'/></a>
								</div>
								<div class='lower-content'>
									<div class='clearfix'>
										<div class='pull-left'>
											<h5><a href='#'>{dr["FennAd"]}</a></h5>
										</div>
										<div class='pull-right'>
											<div class='price'>{dr["FennQiymet"]}₼</div>
										</div>
									</div>
									<div class='text'>{dr["FennInfo"]}</div>
									<div class='clearfix'>
										<div class='pull-left'>
											<div class='students'>{dr["FennTelebeSayi"]} Tələbə</div>
										</div>
									</div>
								</div>
							</div>
						</div>");
            }
			paket.InnerHtml = paketcontent.ToString();
			///////////////


			/// KOMANDA ///
			var komanda = SQL.Execute("select * from Komanda");
			StringBuilder komandamiz = new StringBuilder();
            foreach (DataRow dr in komanda.Rows)
            {
				komandamiz.Append($@"
									<div class='col-md-4 col-sm-6' >
											<div class='our-team'>
												<div class='pic'>
													<img src='../Assets/images/Komandamiz/{dr["MuellimPhoto"]}'/>
													<ul class='social'>

														<p>{dr["MuellimInfo"]}</p>
														<li><a href='{dr["MuellimFacebook"]}' class='fab fa-facebook '></a></li>
														<li><a href='{dr["MuellimTwitter"]}' class='fab fa-twitter '></a></li>
														<li><a href='{dr["MuellimInstagram"]}' class='fab fa-instagram'></i></a></li>
														<li><a href='{dr["MuellimLinkedin"]}' class='fab fa-linkedin'></a></li>
													</ul>
												</div>
												<div class='team-content'>
													<h3 class='title'>{dr["MuellimAd"]}</h3>
													<span class='post'>{dr["MuellimKecdiyiDers"]}</span>
												</div>
											</div>

									</div>");
			}
			komandacontent.InnerHtml = komandamiz.ToString();
			///////////////

			/// ELAQE MELUMATLARI ///
			var elaqeinfotel = SQL.Execute("select * from ElaqeMelumatlari");
			StringBuilder elaqetel = new StringBuilder();
            foreach (DataRow dr in elaqeinfotel.Rows)
            {
				elaqetel.Append($@"<li><a href='tel:{dr["Telefon"]}'>{dr["Telefon"]}</a></li>");
			}
			telcontent.InnerHtml = elaqetel.ToString();

			var elaqeinfoemail = SQL.Execute("select * from ElaqeMelumatlari");
			StringBuilder elaqeemail = new StringBuilder();
			foreach (DataRow dr in elaqeinfoemail.Rows)
			{
				elaqeemail.Append($@"<li><a href='mailto:{dr["Email"]}'>{dr["Email"]}</a></li>");
			}
			emailcontent.InnerHtml = elaqeemail.ToString();

			var elaqeinfoeunvan = SQL.Execute("select * from ElaqeMelumatlari");
			StringBuilder elaqeeunvan = new StringBuilder();
			foreach (DataRow dr in elaqeinfoeunvan.Rows)
			{
				elaqeeunvan.Append($@"<li>{dr["Unvan"]}</li>");
			}
			unvancontent.InnerHtml = elaqeeunvan.ToString();
			///////////////////////// 

			/// NIYE BIZ? ///
			var niyebizvar = SQL.Execute("select * from NiyeBiz");
			StringBuilder niyebizcontent = new StringBuilder();
			foreach (DataRow dr in niyebizvar.Rows)
			{
				niyebizcontent.Append($@"{dr["NiyeBizContent"]}");
			}
			niyebiz.InnerHtml = niyebizcontent.ToString();
		}

		protected void contactgonder_Click(object sender, EventArgs e)
        {
			SQL.Execute($@"insert into IstifadeciMesajlari values (N'{istifadeciad.Value}', N'{istifadecisoyad.Value}', N'{emailunvan.Value}' , N'{telnumber.Value}' , N'{mesaj.Value}')");
		}
    }
}