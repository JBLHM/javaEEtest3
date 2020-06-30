<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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



	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="hero-text text-white">
					<h2>文学课程</h2>
					<p>国外顶级牛人带你走进不一样的文学领域 </p>
					<div class="hero-author">
						<div class="hero-author-pic set-bg" data-setbg="img/hero-author.jpg"></div>
						<h5>By Sebastian Smith, <span>高级开发人员</span></h5>
						<a href="http://baidu.com" class="site-btn">See Details <i class="fa fa-angle-right"></i></a>
					</div>
				</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->


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


	<!-- Services section -->
	<section class="services-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 service-item">
					<div class="si-icon">
						<i class="flaticon-apple"></i>
					</div>
					<div class="si-content">
						<h5>训练中心</h5>
						<p>快来参加胡教授精心准备的课程吧 </p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 service-item">
					<div class="si-icon">
						<i class="flaticon-mortarboard"></i>
					</div>
					<div class="si-content">
						<h5>训练中心</h5>
						<p>快来参加李教授精心准备的课程吧 . </p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 service-item">
					<div class="si-icon">
						<i class="flaticon-idea"></i>
					</div>
					<div class="si-content">
						<h5>训练中心</h5>
						<p>快来参加王教授精心准备的课程吧 . </p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 service-item">
					<div class="si-icon">
						<i class="flaticon-medal"></i>
					</div>
					<div class="si-content">
						<h5>训练中心</h5>
						<p>快来参加孙教授精心准备的课程吧 . </p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 service-item">
					<div class="si-icon">
						<i class="flaticon-question"></i>
					</div>
					<div class="si-content">
						<h5>训练中心</h5>
						<p>快来参加Smith教授精心准备的课程吧  </p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 service-item">
					<div class="si-icon">
						<i class="flaticon-learning"></i>
					</div>
					<div class="si-content">
						<h5>训练中心</h5>
						<p>快来参加关教授精心准备的课程吧 . </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Services section end -->


	<!-- Review section -->
	<section class="review-section spad set-bg" data-setbg="img/review-bg.jpg">
		<div class="container">
			<div class="sec-title text-center text-white">
				<span>our students</span>
				<h2>感言</h2>
			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="review-slider owl-carousel text-white">
					<div class="rs-item">
						<div class="quota">“</div>
						<h5>It helped me so much</h5>
						<p>I tjink all of you need them.</p>
						<div class="review-avator set-bg" data-setbg="img/review-avator.jpg"></div>
						<h6><span>Daiane Smith,</span> Student</h6>
					</div>
					<div class="rs-item">
						<div class="quota">“</div>
						<h5>It helped me so much</h5>
						<p>Thanks for you teaching.</p>
						<div class="review-avator set-bg" data-setbg="img/review-avator.jpg"></div>
						<h6><span>Daiane Smith,</span> Student</h6>
					</div>
				</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Review section end -->

	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
	<!-- Courses section  -->
	<section class="courses-section spad">
		<div class="container">
			<div class="sec-title text-center">
				<span>Only  the best</span>
				<h2>Our Courses</h2>
			</div>
			<div class="course-slider owl-carousel">
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/1.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>初学意大利语言者</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/1.jpg"></div>
							<h6>By Sebastian Smith, <span>Italian Teacher</span></h6>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/2.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>初学英语言者</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/2.jpg"></div>
							<h6>By Maria Williams, <span>English Teacher</span></h6>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/3.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>初学肖像摄影者</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/3.jpg"></div>
							<h6>By Jack Smith, <span>Photographer</span></h6>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/4.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>初学绘画者</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/1.jpg"></div>
							<h6>By Sebastian Smith, <span>Italian Teacher</span></h6>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/5.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>初学摇滚音乐者</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/2.jpg"></div>
							<h6>By Maria Williams, <span>English Teacher</span></h6>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/6.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>初学高能源开发者</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/3.jpg"></div>
							<h6>By Jack Smith, <span>Photographer</span></h6>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="course-item">
					<figure class="course-preview">
						<img src="img/courses/3.jpg" alt="">
						<div class="price">$25</div>
					</figure>
					<div class="course-content">
						<div class="cc-text">
							<h5>Portrait Photography Course for Begginers</h5>
							<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. </p>
							<span><i class="flaticon-student-2"></i>20</span>
							<span><i class="flaticon-placeholder"></i>3</span>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star i-fade"></i>
							</div>
						</div>
						<div class="seller-info">
							<div class="seller-pic set-bg" data-setbg="img/courses/sellers/3.jpg"></div>
							<h6>By Jack Smith, <span>Photographer</span></h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Courses section end -->



	<!-- Fact section -->
	<section class="fact-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6 fact-item">
					<figure>
						<img src="img/icons/1.png" alt="">
					</figure>
					<h2>2500</h2>
					<p>New Students</p>
				</div>
				<div class="col-lg-3 col-sm-6 fact-item">
					<figure>
						<img src="img/icons/2.png" alt="">
					</figure>
					<h2>14k</h2>
					<p>Grad Students</p>
				</div>
				<div class="col-lg-3 col-sm-6 fact-item">
					<figure>
						<img src="img/icons/3.png" alt="">
					</figure>
					<h2>129</h2>
					<p>Qualified Teachers</p>
				</div>
				<div class="col-lg-3 col-sm-6 fact-item">
					<figure>
						<img src="img/icons/4.png" alt="">
					</figure>
					<h2>1490</h2>
					<p>Amazing Courses</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Fact section end -->


	<!-- Newslatter section -->
	<section class="newslatter-section set-bg" data-setbg="img/newslatter-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="sec-title text-white sec-style-2">
						<span>通讯</span>
						<h2>保持更新</h2>
					</div>
				</div>

				<div class="col-lg-9 nl-form-warp">
					<form class="newslatter-form">
						<input type="text" placeholder="Your E-mail">
						<button class="site-btn">Subscribe <i class="fa fa-angle-right"></i></button>
					</form>
					<p>*Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Newslatter section end -->



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