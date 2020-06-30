<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
	<style>
    /*当文字为一行是，则P的宽度小于div的宽度，p标签居中显示在盒子内，文字也就居中了 ;当大于一行时，P的宽度和div的宽度是一致的 ,文字就居左对齐了*/
    .content {    text-align: center  }
    /*display: inline-block使P的宽度根据文字的宽度伸缩 */
    .content p {  text-align: left    }
</style>
<script type="text/javascript">
	//确定按钮
	function gogo(){
		//document.forms[0]：表示获取当前页面的第一个表单
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
		
		function refreshCode(){
			document.getElementById("code").src = "${pageContext.request.contextPath}/validateCode?" + Math.random();
	    }
		
	}
	</script>
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

	

	<!-- Courses section  -->
	<section class="courses-section spad">
		<div class="container">
			<div class="sec-title text-center">
				<span>Only  the best</span>
				<h2>Our Courses</h2>
			</div>
			<div class="row courses-page">
				<!-- course -->
				<div class="col-lg-12">
					<div class="course-item featured">
						<div class="course-preview set-bg" data-setbg="img/courses/7.jpg">
							<div class="price">$25</div>
							<div class="featur-badges">Featured</div>	
						</div>
						<div class="course-content">
							<div class="cc-text">
								<h5>Italian for Begginers & Advanced Course</h5>
								<p>Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus eleifend, et auctor lorem hendrerit. Proin vitae tortor nec risus tristique efficitur. Aliquam luctus est urna, id aliquam orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna. Cras quis ante nibh. Proin tincidunt gravida interdum. Proin sed urna mauris. In molestie quis risus commodo gravida. </p>
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
								<h6>By Sebastian Smith, <span>Italian Teacher<a href="${pageContext.request.contextPath}/showDownFiles"><font color="#000000">点此下载</font></a></span></h6>
								
							</div>
						</div>
					</div>
				</div>
				


<section>
<p align="center">上传文件可获得奖励金币若干</p>

<form action="${pageContext.request.contextPath }/upload/onefile" method="post" enctype="multipart/form-data">
<div class="content">
	<p >   选择文件:<input type="file" name="filename" ><br> 
   	文件描述:<input type="text" name="description"><br>
 	<input type="submit" value="提交">
 	</p>
 </div>   
</form> 
<p><c:out value="${uploadmessage}" default="请选择上传文件" /> </p>
</section>




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