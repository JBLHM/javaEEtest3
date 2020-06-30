<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<title>欢迎来到好孩子学习网站</title>
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
					<li><a href="NewFile.jsp">联系我们</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- Header section end -->





	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="${pageContext.request.contextPath}/before/img/page-top-bg.jpg">
		<div class="container text-white">
			<h3>关于我们</h3>
		</div>
	</section>
	<!--  Page top end -->







	<!-- Search section -->
	<section class="multi-search-section">
		<div class="msf-warp">
			<div class="container">
				<h5>搜索你的课程</h5>
				<form class="multi-search-form">
					<input type="text" placeholder="Course">
					<input type="text" placeholder="Level">
					<input type="text" placeholder="Date">
					<input type="text" placeholder="Teacher">
					<input type="text" placeholder="Price">
					<button class="site-btn">搜索 <i class="fa fa-angle-right"></i></button>
				</form>
			</div>
		</div>
	</section>
	<!-- Search section end -->

	
	

</body>
</html>