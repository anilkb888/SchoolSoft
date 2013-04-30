<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Student Information</h1>


	<div>Name: ${studentDetail.name}</div>
	<br />

	<div>Gender: ${studentDetail.gender}</div>
	<br />

	<div>DOB: ${studentDetail.dob}</div>
	<br />

	<div>Nationality: ${studentDetail.nationality}</div>
	<br />

	<div>Religion: ${studentDetail.religion}</div>
	<br />

	<div>Blood Group: ${studentDetail.bloodGroup}</div>
	<br />

	<div>Class And Section: ${studentDetail.classAndSection}</div>
	<br />

	<div>Caste: ${studentDetail.caste}</div>
	<br />

	<div>Date of Admission: ${studentDetail.dateOfAdmission}</div>
	<br />

	<div>GR Number: ${studentDetail.grNumber}</div>
	<br />
	<div>Mode Of Transport: ${studentDetail.modeOfTransport}</div>
	<br />

	<div>Bus Route: ${studentDetail.busRoute}</div>
	<br />

	<div>Pickup Point: ${studentDetail.pickupPoint}</div>
	<br />

	<div>Caste Certificate: ${studentDetail.casteCertificate}</div>
	<br />

	<div>Physically Handicapped Certificate:
		${studentDetail.physicallyHandicapped}</div>
	<br />
	<br />

	<table>
		<tr>
			<td><strong>Details</strong></td>
			<td><strong>Father</strong></td>
			<td><strong>Mother</strong></td>
		</tr>

		<tr>
			<td>Name</td>
			<td>${studentFatherDetail.name}</td>
			<td>${studentMotherDetail.name}</td>
		</tr>

		<tr>
			<td>Nationality</td>
			<td>${studentFatherDetail.nationality}</td>
			<td>${studentMotherDetail.nationality}</td>
		</tr>

		<tr>
			<td>Mother Tongue</td>
			<td>${studentFatherDetail.motherTongue}</td>
			<td>${studentMotherDetail.motherTongue}</td>
		</tr>

		<tr>
			<td>Occupation</td>
			<td>${studentFatherDetail.occupation}</td>
			<td>${studentMotherDetail.occupation}</td>
		</tr>

		<tr>
			<td>Name of the office</td>
			<td>${studentFatherDetail.nameOfOffice}</td>
			<td>${studentMotherDetail.nameOfOffice}</td>
		</tr>

		<tr>
			<td>Address</td>
			<td>${studentFatherDetail.address}</td>
			<td>${studentMotherDetail.address}</td>
		</tr>
		<tr>
			<td>Telephone Number</td>
			<td>${studentFatherDetail.phoneNumber}</td>
			<td>${studentMotherDetail.phoneNumber}</td>
		</tr>
	</table>






</body>
</html>