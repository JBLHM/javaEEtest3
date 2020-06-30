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
	<section class="page-top-section set-bg" data-setbg="img/page-top-bg.jpg">
		<div class="container text-white">
			<h3>About us</h3>
		</div>
	</section>
	<!--  Page top end -->


	<!-- Search section -->
	<section class="multi-search-section">
		<div class="msf-warp">
			<div class="container">
				<h5>Search your Course</h5>
				<form class="multi-search-form">
					<input type="text" placeholder="Course">
					<input type="text" placeholder="Level">
					<input type="text" placeholder="Date">
					<input type="text" placeholder="Teacher">
					<input type="text" placeholder="Price">
					<button class="site-btn">Search <i class="fa fa-angle-right"></i></button>
				</form>
			</div>
		</div>
	</section>
	<!-- Search section end -->


	<!-- About section -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<!-- Blog item -->
					<div class="blog-item">
						<div class="blog-thumb set-bg" data-setbg="img/blog/1.jpg">
							<div class="blog-date">
								<h2>15</h2>
								<span>may</span>
								<span>2018</span>
							</div>
						</div>
						<div class="blog-content">
							<h3>New school programs up to date</h3>
							<div class="blog-meta">
								<a href=""><span>By</span> Admin</a>|
								<a href=""><span>in</span> School</a>|
								<a href="">3 Comments</a>  
							</div>
							<p>开通远程访问本站，随时随地学习.</p>
							<div class="blog-tag">
								<a href="#">school</a>
								<a href="#">course</a>
								<a href="#">education</a>
							</div>
						</div>
					</div>
					<!-- Blog item -->
					<div class="blog-item">
						<div class="blog-thumb set-bg" data-setbg="img/blog/2.jpg">
							<div class="blog-date">
								<h2>15</h2>
								<span>may</span>
								<span>2018</span>
							</div>
						</div>
						<div class="blog-content">
							<h3>A close look at our new added courses</h3>
							<div class="blog-meta">
								<a href=""><span>By</span> Admin</a>|
								<a href=""><span>in</span> School</a>|
								<a href="">3 Comments</a>  
							</div>
							<p>由于施工，本网站暂时不能访问，还望体谅</p>
							<div class="blog-tag">
								<a href="#">school</a>
								<a href="#">course</a>
								<a href="#">education</a>
							</div>
						</div>
					</div>
					<!-- Blog item -->
					<div class="blog-item">
						<div class="blog-thumb set-bg" data-setbg="img/blog/3.jpg">
							<div class="blog-date">
								<h2>15</h2>
								<span>may</span>
								<span>2018</span>
							</div>
						</div>
						<div class="blog-content">
							<h3>A close look at our new added courses</h3>
							<div class="blog-meta">
								<a href=""><span>By</span> Admin</a>|
								<a href=""><span>in</span> School</a>|
								<a href="">3 Comments</a>  
							</div>
							<p>流行歌曲课程上线了</p>
							<div class="blog-tag">
								<a href="#">school</a>
								<a href="#">course</a>
								<a href="#">education</a>
							</div>
						</div>
					</div>
					<div class="site-pagination">
						<span>01.</span>
						<a href="#">02.</a>
						<a href="#">03</a>
					</div>
				</div>
				<!-- sidebar -->
				<div class="col-lg-4 col-md-7 sidebar pt-5 pt-lg-0">
					<div class="widget">
						<form class="search-form">
							<input type="text" placeholder="Search">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div>
					<div class="widget">
						<h3 class="widget-title">Categories</h3>
						<ul>
							<li><a href="#">Books<span>(9)</span></a></li>
							<li><a href="#">Events<span>(6)</span></a></li>
							<li><a href="#">Courses<span>(6)</span></a></li>
							<li><a href="#">Teachers<span>(7)</span></a></li>
							<li><a href="#">Music<span>(33)</span></a></li>
							<li><a href="#">精选<span>(7)</span></a></li>
							<li><a href="#">School<span>(6)</span></a></li>
						</ul>
					</div>
					<div class="widget">
						<h3 class="widget-title">Latest News</h3>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/courses/1.jpg"></div>
								<div class="lb-content">
									<h5>New School programs</h5>
									<p>14.05.18<span>312 Views</span></p>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/courses/2.jpg"></div>
								<div class="lb-content">
									<h5>A close look at our courses</h5>
									<p>14.05.18<span>312 Views</span></p>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/courses/6.jpg"></div>
								<div class="lb-content">
									<h5>New School programs</h5>
									<p>14.05.18<span>312 Views</span></p>
								</div>
							</div>
						</div>
					</div>
					<div class="widget">
						<div class="newslatter-card set-bg" data-setbg="img/nl-card-bg.jpg">
							<h5>Stay updated</h5>
							<form class="newslatter-form">
								<input type="text" placeholder="Your E-mail">
								<button class="site-btn">Subscribe <i class="fa fa-angle-right"></i></button>
							</form>
							<p>快来加入我们吧</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About section end -->


	<!-- Footer section -->
	<footer class="footer-section spad pb-0">
		<div class="container">
			<div class="text-center">
				<a href="#" class="site-btn">Enroll Now <i class="fa fa-angle-right"></i></a>
			</div>
			<div class="row text-white spad">
				<div class="col-lg-3 col-sm-6 footer-widget">
					<h4>工程学</h4>
					<ul>
						<li><a href="#">应用研究</a></li>
						<li><a href="#">计算机工程</a></li>
						<li><a href="#">软件工程</a></li>
						<li><a href="#">信息工程</a></li>
						<li><a href="#">系统工程</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-sm-6 footer-widget">
					<h4>商学院</h4>
					<ul>
						<li><a href="#">应用研究</a></li>
						<li><a href="#">计算机工程</a></li>
						<li><a href="#">软件工程</a></li>
						<li><a href="#">信息工程</a></li>
						<li><a href="#">系统工程/a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-sm-6 footer-widget">
					<h4>艺术与设计</h4>
					<ul>
						<li><a href="#">平面设计</a></li>
						<li><a href="#">动态图形和3D</a></li>
						<li><a href="#">古典绘画</a></li>
						<li><a href="#">雕塑</a></li>
						<li><a href="#">时尚设计</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-sm-6 footer-widget">
					<h4>高等教育</h4>
					<ul>
						<li><a href="#">应用研究</a></li>
						<li><a href="#">计算机工程</a></li>
						<li><a href="#">软件工程</a></li>
						<li><a href="#">信息工程</a></li>
						<li><a href="#">系统工程</a></li>
					</ul>
				</div>
			</div>
			<div class="footer-bottom">
				
				<div class="social">
					<a href=""><i class="fa fa-pinterest"></i></a>
					<a href=""><i class="fa fa-facebook"></i></a>
					<a href=""><i class="fa fa-twitter"></i></a>
					<a href=""><i class="fa fa-dribbble"></i></a>
					<a href=""><i class="fa fa-behance"></i></a>
					<a href=""><i class="fa fa-linkedin"></i></a>
				</div>
				<ul class="footer-menu">
					<li><a href="#">Home</a></li>
					<li><a href="#">About us</a></li>
					<li><a href="#">Courses</a></li>
					<li><a href="#">Courses</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<div class="footer-logo">
					<a href="#">
						<img src="img/footer-logo.png" alt="">
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<p class="text-white  text-center">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Colorlib  All rights reserved | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
</p>	
				</div>
				
			</div>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>