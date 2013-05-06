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
<link href="<c:url value="/resources/css/student_list.css"/>"
	rel="stylesheet" type="text/css" />

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
			<!-- start of middle -->
			<!-- <div id="mid_title">Select the class of the student whose details you want.</div> -->
			<h1 align="center" style="color: white">Select the class of the student whose
				details you want.</h1>

			<form action="studentList">
				<div align="center">
				<div>
					<input class="button" type="submit" name="class" value="1A">
					<input class="button" type="submit" name="class" value="1B">
					<input class="button" type="submit" name="class" value="2A">
					<input class="button" type="submit" name="class" value="2B">
					<input class="button" type="submit" name="class" value="3A">
				</div>
				
				<div>
					<input class="button" type="submit" name="class" value="3B">
					<input class="button" type="submit" name="class" value="4A">
					<input class="button" type="submit" name="class" value="4B">
					<input class="button" type="submit" name="class" value="5A">
					<input class="button" type="submit" name="class" value="5B">
				</div>
				<div>
					<input class="button" type="submit" name="class" value="6A">
					<input class="button" type="submit" name="class" value="6B">
					<input class="button" type="submit" name="class" value="7A">
					<input class="button" type="submit" name="class" value="7B">
					<input class="button" type="submit" name="class" value="8A">
				</div>
				<div>
					<input class="button" type="submit" name="class" value="8B">
					<input class="button" type="submit" name="class" value="9A">
					<input class="button" type="submit" name="class" value="9B">
					<input class="button" type="submit" name="class" value="10A">
					<input class="button" type="submit" name="class" value="10B">
				</div>
			</div>
			</form>
			</div>
		<!-- end of middle -->	
			<div id="templatemo_main">
			<br /> <br />
			<table style="border: 2px solid black;" align="center" >
				<tr><td>GR. Number</td><td>Student Name</td></tr>
				<c:forEach items="${studentList}" var="list">
					<tr>
						<td><a href="studentInformation?gr_num=${list.grNumber}">
								${list.grNumber} </a></td>
						<td>${list.name}</td>
					</tr>
				</c:forEach>

			</table>

			<a href="createForm">Add Student</a>
		</div>
</body>
</html>