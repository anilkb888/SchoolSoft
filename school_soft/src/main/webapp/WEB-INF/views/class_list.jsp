<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Class List</h1>
	<!-- 
	<form method="post" action="findStudent">
		<h3>
			<strong>Select Class</strong>
		</h3>
		<select name="type">
			<option value="1A">1 A</option>
			<option value="1B">1 B</option>
			<option value="1B">1 B</option>
			<option value="1B">1 B</option>
		</select> <input type="text" name="num" size="50" /> <input type="submit" />
	</form>
 	-->
	<form action="studentList">
	<input type="submit" name="class" value="1A">
	<input type="submit" name="class" value="1B">
	<input type="submit" name="class" value="2A">
	<input type="submit" name="class" value="2B">
	<input type="submit" name="class" value="3A">
	<input type="submit" name="class" value="3B">
	<input type="submit" name="class" value="4A">
	<input type="submit" name="class" value="4B">
	<input type="submit" name="class" value="5A">
	<input type="submit" name="class" value="5B">
	<input type="submit" name="class" value="6A">
	<input type="submit" name="class" value="6B">
	<input type="submit" name="class" value="7A">
	<input type="submit" name="class" value="7B">
	<input type="submit" name="class" value="8A">
	<input type="submit" name="class" value="8B">
	<input type="submit" name="class" value="9A">
	<input type="submit" name="class" value="9B">
	<input type="submit" name="class" value="10A">
	<input type="submit" name="class" value="10B">
</form>

<br/>
<br/>
<table>
		<c:forEach items="${studentList}" var="list">
			<tr>
				<td><a href="studentInformation?gr_num=${list.grNumber}"> ${list.grNumber} </a></td>
				<td>${list.name}</td>
			</tr>
		</c:forEach>

	</table>
	
	<a href="createForm" >Add Student</a>

</body>
</html>