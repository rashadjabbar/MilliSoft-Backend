<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MilliSoft.aspx.cs" Inherits="MilliSoft.WebForm1" %>

<!DOCTYPE html>
<html>

<!-- Mirrored from demo.auburnforest.com/html/bootcamp/bootcamp/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 11 Jun 2021 12:23:09 GMT -->

<head>
	<meta charset="utf-8">
	<title>MilliSoft</title>
	<!-- Stylesheets -->
	<link href="../Assets/css/bootstrap.css" rel="stylesheet">
	<link href="../Assets/css/main.css" rel="stylesheet">
	<link href="../Assets/css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

	<link rel="shortcut icon" href="https://i.pinimg.com/474x/97/f9/65/97f965dfc4834708cc73fdc4b652b20c.jpg"
		type="image/x-icon">
	<link rel="icon" href="https://i.pinimg.com/474x/97/f9/65/97f965dfc4834708cc73fdc4b652b20c.jpg" type="image/x-icon">

	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Titillium+Web:wght@300;400;600;700;900&amp;display=swap"
		rel="stylesheet">

	<!-- Responsive -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

	<div class="page-wrapper">

		<!-- Preloader -->
		<div class="preloader"></div>

		<!-- Main Header-->
		<header class="main-header header-style-one">
			<!-- Header Upper -->
			<div class="header-upper">
				<div class="auto-container">
					<div class="clearfix">

						<div class="pull-left logo-box">
							<div class="logo"><a href="MilliSoft.aspx">
									<h3>MilliSoft</h3>
								</a></div>
						</div>

						<div class="nav-outer clearfix">
							<!--Mobile Navigation Toggler-->
							<div class="mobile-nav-toggler"><span class="icon flaticon-menu"></span></div>
							<!-- Main Menu -->
							<nav class="main-menu show navbar-expand-md">
								<div class="navbar-header">
									<button class="navbar-toggler" type="button" data-toggle="collapse"
										data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
										aria-expanded="false" aria-label="Toggle navigation">
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>

								<div class="navbar-collapse collapse clearfix" id="navbarSupportedContent">
									<ul class="navigation clearfix">
										<li><a href="MilliSoft.aspx">Ana səhifə</a>
										</li>
										<li><a href="#paketler">Paketlər</a>
										</li>
										<li><a href="#komandamiz">Komandamız</a>
										</li>
										<li><a href="#elaqe">Bizimlə əlaqə</a></li>
									</ul>
								</div>

							</nav>

						</div>

					</div>
				</div>
			</div>
			<!-- End Header Upper -->

			<!-- Mobile Menu  -->
			<div class="mobile-menu">
				<div class="menu-backdrop"></div>
				<div class="close-btn"><span class="icon flaticon-multiply"></span></div>

				<nav class="menu-box">
					<div class="nav-logo"><a href="index.html">
							<h2>MilliSoft</h2>
						</a></div>
					<div class="menu-outer">
						<!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
					</div>
				</nav>
			</div>
			<!-- End Mobile Menu -->

		</header>
		<!-- End Main Header -->

		<!-- Banner Section -->
		<section class="banner-section">
			<div class="pattern-layer" style="background-image: url(../Assets/images/background/1.png)"></div>
			<div class="auto-container">

				<!-- Content Boxed -->
				<div class="content-boxed">
					<div class="inner-column">
						<h1>Gələcəyini bizimlə qur!</h1>
						<div class="buttons-box">
							<a href="#elaqe" class="theme-btn btn-style-one"><span class="txt">İndi Başla <i
										class="fa fa-angle-right"></i></span></a>
							<a href="#paketler" class="theme-btn btn-style-two"><span class="txt">Paketlər <i
										class="fa fa-angle-right"></i></span></a>
						</div>
					</div>
				</div>

				<!-- Image Boxed -->
				<div class="image titlt" data-tilt data-tilt-max="4">
					<a href="../Assets/images/resource/banner.png" data-fancybox="banner" data-caption="" class=""><img
							src="../Assets/images/resource/banner.png" alt="" /></a>
				</div>
			</div>
		</section>
		<!-- End Banner Section -->

		<!-- Education Section -->
		<section class="education-section">
			<div class="patern-layer-one paroller" data-paroller-factor="0.60" data-paroller-factor-lg="0.20"
				data-paroller-type="foreground" data-paroller-direction="vertical"
				style="background-image: url(../Assets/images/icons/icon-1.png)"></div>
			<div class="patern-layer-two paroller" data-paroller-factor="0.60" data-paroller-factor-lg="-0.20"
				data-paroller-type="foreground" data-paroller-direction="vertical"
				style="background-image: url(../Assets/images/icons/icon-2.png)"></div>
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Image Column -->
					<div class="image-column col-lg-6 col-md-12 col-sm-12">
						<div class="inner-column parallax-scene-1">
							<div class="image parallax-layer" data-depth="0.30">
								<img src="../Assets/images/resource/education.png" alt="" />
							</div>
						</div>
					</div>

					<!-- Content Column -->
					<div class="content-column col-lg-6 col-md-12 col-sm-12">
						<div class="inner-column">
							<h2>Niyə biz?</h2>
							<div class="text" id="niyebiz" runat="server">Fəaliyyətimiz Millisoft IT şirkəti 2009-ci ildə kompüter texnologiyaları
								sahəsində ixtisaslaşmış, yüksək səviyyəli mütəxəssislər tərəfindən yerli və eyni zamanda
								da xarici şirkətlərin İnformasiya Texnologiyaları sahəsində olan bütün yeniliklərini
								tətbiq etməklə bizimlə əməkdaşlıq edəcək şirkətlərin tələblərini qarşılamaq məqsədi ilə
								yaradılmışdır. Fəaliyyət göstərdiyimiz illər ərzində şirkətimiz müxtəlif müəssisə və
								təşkilatların əməkdaşları, eləcə də sıravi vətəndaşlar üçün sürətli, keyfiyyətli və
								sərfəli xidmət göstərərək müştərilərimizin rəğbətini qazanməşdır.</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End Education Section -->

		<!-- Courses Section -->
		<section class="courses-section" id="paketler">
			<div class="auto-container">
				<div class="paketler">
					<h1>Paketlər</h1>
				</div>
				<div  id="paket" runat="server" style="display: flex; flex-wrap: wrap;">

				</div>
			</div>
		</section>
		<!-- End Courses Section -->
		<hr>
		<!-- Team Section -->
		<div class="container" id="komandamiz">
			<div class="our-team-tittle">
					<h1>Komandamız</h1>
				</div>
			<div class="row" id="komandacontent" runat="server">
				

			</div>
		</div>


		<!-- Achievement Section -->
		<section class="achievements-section">
			<div class="auto-container">
				<!-- Sec Title -->
				<div class="sec-title centered">
					<h2>Nəaliyyətlərimiz</h2>
					<div class="text">Hər keçən gün ailəmiz dahada böyüyür</div>
				</div>

				<!-- Fact Counter -->
				<div class="fact-counter">
					<div class="row clearfix">

						<!-- Column -->
						<div class="column counter-column col-lg-4 col-md-6 col-sm-12">
							<div class="inner wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="icon-box">
										<span class="icon flaticon-course"></span>
									</div>
									<h4 class="counter-title">Bitmiş proyektlər</h4>
									<div class="count-outer count-box">
										<span class="count-text" data-speed="2000" data-stop="2500">0</span>+
									</div>
								</div>
							</div>
						</div>

						<!-- Column -->
						<div class="column counter-column col-lg-4 col-md-6 col-sm-12">
							<div class="inner wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="icon-box">
										<span class="icon flaticon-course-1"></span>
									</div>
									<h4 class="counter-title">Tələbə sayı</h4>
									<div class="count-outer count-box alternate">
										<span class="count-text" data-speed="2000" data-stop="3000">0</span>+
									</div>
								</div>
							</div>
						</div>

						<!-- Column -->
						<div class="column counter-column col-lg-4 col-md-6 col-sm-12">
							<div class="inner wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="icon-box">
										<span class="icon flaticon-world"></span>
									</div>
									<h4 class="counter-title">Məmnun Müştərilər</h4>
									<div class="count-outer count-box">
										<span class="count-text" data-speed="2000" data-stop="1200">0</span>+
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</section>
		<!-- End Achievement Section -->

		<!-- Contact Page Section -->
		<section class="contact-page-section" id="elaqe">
			<div class="patern-layer-one paroller" data-paroller-factor="0.40" data-paroller-factor-lg="0.20"
				data-paroller-type="foreground" data-paroller-direction="vertical"
				style="background-image: url(../Assets/images/icons/icon-1.png)"></div>
			<div class="patern-layer-two paroller" data-paroller-factor="0.40" data-paroller-factor-lg="-0.20"
				data-paroller-type="foreground" data-paroller-direction="vertical"
				style="background-image: url(../Assets/images/icons/icon-2.png)"></div>
			<div class="auto-container">
				<div class="inner-container">
					<!-- Sec Title -->
					<div class="sec-title centered">
						<h2>Bizimlə əlaqə</h2>
					</div>

					<!-- Contact Form -->
					<div class="contact-form">

						<!-- Profile Form -->
						<form  runat="server">
							<div class="row clearfix">

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="username" placeholder="Ad*" id="istifadeciad" runat="server">
								</div>

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="lastname" placeholder="Soyad*"  id="istifadecisoyad"  runat="server">
								</div>

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="email" name="email" placeholder="Email ünvanı*" id="emailunvan"  runat="server">
								</div>

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="phone" placeholder="Telefon nömrəsi*" id="telnumber"  runat="server">
								</div>

								<div class="col-lg-12 col-md-12 col-sm-12 form-group">
									<textarea class="" name="message" placeholder="Mesaj göndər" id="mesaj"  runat="server"></textarea>
								</div>

								<div class="col-lg-12 col-md-12 col-sm-12 form-group text-right">
									
									<asp:Button class="theme-btn btn-style-three" Text="Göndər" ID="contactgonder" OnClick="contactgonder_Click" runat="server"/>
								</div>

							</div>
						</form>

					</div>

				</div>

				<!-- Contact Info Section -->
				<div class="contact-info-section">
					<div class="title-box">
						<h2>Əlaqə məlumatları</h2>
						<div class="text">Texnologiyadan bir zəng qədər uzaq</div>
					</div>

					<div class="row clearfix">

						<!-- Info Column -->
						<div class="info-column col-lg-4 col-md-6 col-sm-12">
							<div class="info-inner">
								<div class="icon fa fa-phone"></div>
								<strong>Telefon</strong>
								<ul runat="server" id="telcontent">
									<li><a href="tel:+994 070-477-20-29">+994 070-477-20-29</a></li>
								</ul>
							</div>
						</div>

						<!-- Info Column -->
						<div class="info-column col-lg-4 col-md-6 col-sm-12">
							<div class="info-inner">
								<div class="icon fas fa-envelope"></div>
								<strong>Email</strong>
								<ul runat="server" id="emailcontent">
									<li><a href="mailto:info@millisoft.az">info@millisoft.az</a></li>
								</ul>
							</div>
						</div>

						<!-- Info Column -->
						<div class="info-column col-lg-4 col-md-6 col-sm-12">
							<div class="info-inner">
								<div class="icon fa fa-map-marker"></div>
								<strong>Ünvan</strong>
								<ul runat="server" id="unvancontent">
									<li>Elmlər akademiyası metro stansiyası, Baku 1000</li>
								</ul>
							</div>
						</div>

					</div>

				</div>

			</div>
		</section>
		<!-- End Contact Page Section -->

		<!-- Call To Action Section Two -->
		<section class="call-to-action-section-two" style="background-image: url(../Assets/images/background/3.png)">
			<div class="auto-container">
				<div class="content">
					<h2 style="padding-bottom: 25px;">Gələcəyini Bizimlə Qur!</h2>
					<div class="buttons-box">
						<a href="#elaqe" class="theme-btn btn-style-one"><span class="txt">İndi Başla <i
									class="fa fa-angle-right"></i></span></a>
						<a href="#paketler" class="theme-btn btn-style-two"><span class="txt">Paketlər <i
									class="fa fa-angle-right"></i></span></a>
					</div>
				</div>
			</div>
		</section>
		<!-- End Call To Action Section Two -->



		<!--Main Footer-->


	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-arrow-circle-up"></span></div>

	<script src="../Assets/js/jquery.js"></script>
	<script src="../Assets/js/popper.min.js"></script>
	<script src="../Assets/js/jquery.scrollTo.js"></script>
	<script src="../Assets/js/bootstrap.min.js"></script>
	<script src="../Assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../Assets/js/jquery.fancybox.js"></script>
	<script src="../Assets/js/appear.js"></script>
	<script src="../Assets/js/swiper.min.js"></script>
	<script src="../Assets/js/element-in-view.js"></script>
	<script src="../Assets/js/jquery.paroller.min.js"></script>
	<script src="../Assets/js/parallax.min.js"></script>
	<script src="../Assets/js/tilt.jquery.min.js"></script>
	<script src="../Assets/js/jquery.easing.min.js"></script>
	<script src="../Assets/js/owl.js"></script>
	<script src="../Assets/js/wow.js"></script>
	<script src="../Assets/js/jquery-ui.js"></script>
	<script src="../Assets/js/script.js"></script>

</body>

<!-- Mirrored from demo.auburnforest.com/html/bootcamp/bootcamp/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 11 Jun 2021 12:23:28 GMT -->

</html>
