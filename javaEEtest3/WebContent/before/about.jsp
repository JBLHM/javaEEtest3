<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
	<title>欢迎来到好孩子学习网站</title>
	<meta charset="UTF-8">
	<meta name="description" content="Academica Learning Page Template">
	<meta name="keywords" content="academica, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="${pageContext.request.contextPath}/before/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/flaticon.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/owl.carousel.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- Header section -->
	<header class="header-section">
		<div class="header-warp">
			<div class="container">
				<a href="#" class="site-logo">
					<img src="${pageContext.request.contextPath }/before/img/logo.png" alt="">
				</a>
				<div class="user-panel">
					<a href="${pageContext.request.contextPath }/tologin.jsp">Login</a><span>/</span><a href="${pageContext.request.contextPath }/tologin.jsp">Register</a>
				</div>
				<div class="nav-switch">
					<i class="fa fa-bars"></i>
				</div>
				<ul class="main-menu">
					<li><a href="index.jsp">主界面</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="contact.jsp">课程</a></li>
					<li><a href="blog.jsp">新闻</a></li>
					<li><a href="newcontact.jsp">联系我们</a></li>
					
				</ul>
				
			</div>
		</div>
		
	</header>
	<!-- Header section end -->
<session class="cbcj">
		<div class="up1">
				<ul class="utry">
				<li><c:out value="${unamex}" default="游客" />,你好</li>
				</ul>
				
		</div>
</session>

	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="${pageContext.request.contextPath}/before/img/page-top-bg.jpg">
		<div class="container text-white">
			<h3>关于我们</h3>
		</div>
	</section>
	<!--  Page top end -->









	<!-- About section -->
	<section class="about-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 about-text">
					<h3>各位游客你们好，这里是好孩子网站</h3>
					<p>现在的好孩子网站只是一个测试版，仅用于测试</p> 
					<p>本人不会特意收集个人信息，只会收集必要信息以供精准推荐游客你们想要的文章 </p>
					<a href="#" class="site-btn">Read More <i class="fa fa-angle-right"></i></a>
				</div>
				<div class="col-lg-5">
					<figure class="pt-lg-0 pt-5">
						<img src="${pageContext.request.contextPath}/before/img/about.jpg" alt="">
					</figure>
				</div>
			</div>
		</div>
	</section>
	<!-- About section end -->
















	<!-- Pricing section -->
	<section class="pricing-section spad">
		<div class="container">
			<div class="sec-title text-center">
				<span>要做到最好</span>
				<h2>会员套餐</h2>
			</div>
			<!-- pricing switch -->
			<div class="pricing-switch-warp">
				<div class="pricing-switch">
					<div class="ps-month">1个月</div>
					<div class="main-switch"></div>
					<div class="ps-annual">1年</div>
				</div>
			</div>
			<!-- Monthly pricing charts -->
			<div class="mp-chart">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart">
							<h2>免费</h2>
							<span>永久</span>
							<h4>新手</h4>
							<ul>
								<li>1个邮箱</li>
								<li>10 个用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">购买 <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart pc-populer">
							<div class="offer-info">节省20% - 年度套餐</div>
							<h3>15<sup>90</sup></h3>
							<span>/month</span>
							<h4>Regular</h4>
							<ul>
								<li>3 个邮箱</li>
								<li>15 个用户</li>
								<li>25 GB空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
								<li>
									<img src="img/icons/check.png" alt="">
								</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">购买 <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart">
							<div class="offer-info">Save 20% - go annual</div>
							<h3>25<sup>90</sup></h3>
							<span>/month</span>
							<h4>Professional</h4>
							<ul>
								<li>3 个邮箱</li>
								<li>20 个用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
								<li>
									<img src="img/icons/check.png" alt="">
								</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">Purchase <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart">
							<div class="offer-info">Save 20% - go annual</div>
							<h3>45<sup>90</sup></h3>
							<span>/month</span>
							<h4>Corporate</h4>
							<ul>
								<li>3 个邮箱</li>
								<li>无限个用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
								<li>
									<img src="img/icons/check.png" alt="">
									<img src="img/icons/check.png" alt="">
								</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">Purchase <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- Annual pricing charts -->
			<div class="ap-chart">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart">
							<h2>Free</h2>
							<span>Forever</span>
							<h4>Begginer</h4>
							<ul>
								<li>1 个邮箱</li>
								<li>10 个用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">Purchase <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart pc-populer">
							<div class="offer-info">Save 20% - go annual</div>
							<h3>110<sup>90</sup></h3>
							<span>/Annual</span>
							<h4>Regular</h4>
							<ul>
								<li>3 个邮箱</li>
								<li>15 个用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
								<li>
									<img src="img/icons/check.png" alt="">
								</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">Purchase <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart">
							<div class="offer-info">Save 20% - go annual</div>
							<h3>215<sup>90</sup></h3>
							<span>/annual</span>
							<h4>Professional</h4>
							<ul>
								<li>3 个邮箱</li>
								<li>20 个用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
								<li>
									<img src="img/icons/check.png" alt="">
								</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">Purchase <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="pricing-chart">
							<div class="offer-info">Save 20% - go annual</div>
							<h3>320<sup>90</sup></h3>
							<span>/annual</span>
							<h4>Corporate</h4>
							<ul>
								<li>3 个邮箱</li>
								<li>无限用户</li>
								<li>25 GB 空间</li>
								<li>全站免费阅读</li>
								<li>25 GB 下载量</li>
								<li>
									<img src="img/icons/check.png" alt="">
									<img src="img/icons/check.png" alt="">
								</li>
							</ul>
							<a href="${pageContext.request.contextPath }/tochoosecost" class="site-btn">Purchase <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Pricing section end -->








	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>