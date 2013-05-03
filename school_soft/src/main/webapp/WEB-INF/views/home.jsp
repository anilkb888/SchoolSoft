<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>School Soft-Choose</title>
<meta name="keywords"
	content="blue smoothie, gallery, free, website, template, css" />
<meta name="description" content="Blue Smoothie, Web Design Gallery" />
<link href="<c:url value="/resources/css/templatemo_style.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/choose.css"/>" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery.lightbox-0.5.css"/>" />

<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
<script type="text/javascript"
	src="<c:url value="/resources/scripts/jquery.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/jquery.lightbox-0.5.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery.lightbox-0.5.css"/>"
	media="screen" />
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
	$(function() {
		$('#gallery a').lightBox();
	});
</script>

</head>
<body id="sub">

	<div id="templatemo_wrapper">
		<div id="templatmeo_header">
			<div id="site_title">
				<h1>
					<a href="index.html">Free CSS Templates</a>
				</h1>
			</div>
			<div id="templatemo_menu">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="contact.html">Contact</a></li>
					<li><a href="login.html">Login</a></li>
				</ul>
			</div>
			<!-- end of templatemo_menu -->
		</div>
		<!-- end of header -->

		<div id="templatemo_middle_sub">
			<div id="mid_title">Welcome</div>
			<p>Choose the option what you want to view/edit.Select the class
				of the student whose profile you want to view from the page you will
				be taken to.</p>
		</div>
		<!-- end of middle -->

		<div id="templatemo_main">

			<table align="center" width="600">
				<tr>
					<td align="center"><a href="studentDetails"> <img
							src="<c:url value="/resources/images/choose/student-icon.png"/>"
							width="150" height="150" /> <br> <em>Student Details</em></br>
					</a></td>
					</td>
					<td align="center"><a href="accounts" title="Accounts"> <img
							src="<c:url value="/resources/images/choose/piggybank-icon.png"/>"
							width="150" height="150" /> <br> <em>Accounts</em></br>
					</a></td>

				</tr>

				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr class="bottompadding">
					<td align="center"><a href="images/gallery/image_03_l.jpg"
						title="Curabitur ullamcorper magna sed erat."> <img
							src="<c:url value="/resources/images/choose/performance-icon.png"/>"
							width="120" height="120" /> <br> <em>Performance
								Analysis</em></br>
					</a></td>

					<td align="center"><a href="images/gallery/image_04_l.jpg"
						title="Fusce in ipsum purus venenatis interdum."> <img
							src="<c:url value="/resources/images/choose/message-icon.png"/>"
							width="120" height="120" /> <br> <em>Send Messages</em></br>
					</a></td>
				</tr>
			</table>


		</div>




	</div>
	end of templatemo_main
	</div>
	end of wrapper

	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">

			<div class="col_allw300">
				<h4>Our Pages</h4>
				<ul class="footer_list">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">About Us</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="col_allw300">
				<h4>Our Partners</h4>
				<ul class="footer_list">
					<li><a href="http://www.koflash.com/" target="_parent">Flash
							Gallery</a></li>
					<li><a href="http://www.flashmo.com/" target="_parent">Free
							Flash Templates</a></li>
					<li><a href="http://www.templatemo.com/" target="_parent">Free
							CSS Templates</a></li>
					<li><a href="http://www.flashmo.com/store" target="_parent">Premiun
							Templates</a></li>
					<li><a href="http://www.webdesignmo.com/" target="_parent">Web
							Design Blog</a></li>
				</ul>
			</div>
			<div class="col_allw300 col_last">
				<h4>About Us</h4>
				<p>
					Blue Smoothie is a <a href="http://www.templatemo.com/"
						target="_blank">free CSS template</a> brought to you by <a
						href="http://www.templatemo.com/" target="_blank">templatemo.com</a>.
					Feel free to download, modify and apply this template for your
					websites. Credit goes to <a href="http://www.photovaco.com/"
						target="_blank">Free Photos</a>. Lorem ipsum dolor sit amet.
					Nullam faucibus ipsum ac sapien tincidunt auctor. Nunc risus
					tortor. Validate <a
						href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a>
					&amp; <a href="http://jigsaw.w3.org/css-validator/check/referer"
						rel="nofollow"><strong>CSS</strong></a>.
				</p>
			</div>

			<div class="cleaner"></div>

		</div>
		<!-- end of templatemo_footer -->
		<div class="cleaner"></div>
	</div>


	<div id="templatemo_copyright_wrapper">
		<div id="templatemo_copyright">

			Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a
				href="http://www.templatemo.com" target="_parent">Free CSS
				Templates</a>

		</div>
		<!-- end of templatemo_footer -->
	</div>

</body>
</html>