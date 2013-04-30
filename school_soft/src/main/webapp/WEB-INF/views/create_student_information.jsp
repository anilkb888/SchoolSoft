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


	<c:url value="/submitStudentInformation"
		var="submitStudentInformationUrl" />

	<form:form action="${submitStudentInformationUrl}" method="POST"
		commandName="studentRegistrationForm">

	Student Details:
	<div>
			Name:
			<form:input path="studentDetails.name" />
			<form:errors path="studentDetails.name" cssStyle="color:red" />
		</div>
		<div>
			DOB:
			<form:input path="studentDetails.dob" />
			<form:errors path="studentDetails.dob" cssStyle="color:red" />
		</div>
		<div>
			Gender:
			<form:input path="studentDetails.gender" />
			<form:errors path="studentDetails.gender" cssStyle="color:red" />
		</div>
		<div>
			Blood Group:
			<form:input path="studentDetails.bloodGroup" />
			<form:errors path="studentDetails.bloodGroup" cssStyle="color:red" />
		</div>

		<div>
			Nationality:
			<form:input path="studentDetails.nationality" />
			<form:errors path="studentDetails.nationality" cssStyle="color:red" />
		</div>

		<div>
			Religion:
			<form:input path="studentDetails.religion" />
			<form:errors path="studentDetails.religion" cssStyle="color:red" />
		</div>

		<div>
			Class And Section:
			<form:input path="studentDetails.classAndSection" />
			<form:errors path="studentDetails.classAndSection"
				cssStyle="color:red" />
		</div>

		<div>
			Caste:
			<form:input path="studentDetails.caste" />
			<form:errors path="studentDetails.caste" cssStyle="color:red" />
		</div>

		<div>
			dateOfAdmission:
			<form:input path="studentDetails.dateOfAdmission" />
			<form:errors path="studentDetails.dateOfAdmission"
				cssStyle="color:red" />
		</div>

		<div>
			GR Number:
			<form:input path="studentDetails.grNumber" />
			<form:errors path="studentDetails.grNumber" cssStyle="color:red" />
		</div>

		<div>
			Mode of Transport:
			<form:input path="studentDetails.modeOfTransport" />
			<form:errors path="studentDetails.modeOfTransport"
				cssStyle="color:red" />
		</div>

		<div>
			Bus Route:
			<form:input path="studentDetails.busRoute" />
			<form:errors path="studentDetails.busRoute" cssStyle="color:red" />
		</div>
		<div>
			Pickup Point:
			<form:input path="studentDetails.pickupPoint" />
			<form:errors path="studentDetails.pickupPoint" cssStyle="color:red" />
		</div>

		<div>
			Caste Certificate:
			<form:input path="studentDetails.casteCertificate" />
			<form:errors path="studentDetails.casteCertificate"
				cssStyle="color:red" />
		</div>
		<div>
			Physically Handicapped:
			<form:input path="studentDetails.physicallyHandicapped" />
			<form:errors path="studentDetails.physicallyHandicapped"
				cssStyle="color:red" />
		</div>



		<table>
			<tr>
				<td><strong>Details</strong></td>
				<td><strong>Father</strong></td>
				<td><strong>Mother</strong></td>
			</tr>

			<tr>
				<td>Name</td>
				<td><form:input path="studentFatherDetail.name" />
					<form:errors path="studentFatherDetail.name" cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.name" />
					<form:errors path="studentMotherDetail.name" cssStyle="color:red" /></td>
			</tr>

			<tr>
				<td>Nationality</td>
				<td><form:input path="studentFatherDetail.nationality" />
				<form:errors path="studentFatherDetail.nationality"
					cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.nationality" />
				<form:errors path="studentMotherDetail.nationality"
					cssStyle="color:red" /></td>
			</tr>

			<tr>
				<td>Mother Tongue</td>
				<td><form:input path="studentFatherDetail.motherTongue" />
				<form:errors path="studentFatherDetail.motherTongue"
					cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.motherTongue" />
				<form:errors path="studentMotherDetail.motherTongue"
					cssStyle="color:red" /></td>
			</tr>

			<tr>
				<td>Occupation</td>
				<td><form:input path="studentFatherDetail.occupation" />
				<form:errors path="studentFatherDetail.occupation"
					cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.occupation" />
				<form:errors path="studentMotherDetail.occupation"
					cssStyle="color:red" /></td>
			</tr>

			<tr>
				<td>Name of the office</td>
				<td><form:input path="studentFatherDetail.nameOfOffice" />
				<form:errors path="studentFatherDetail.nameOfOffice"
					cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.nameOfOffice" />
				<form:errors path="studentMotherDetail.nameOfOffice"
					cssStyle="color:red" /></td>
			</tr>

			<tr>
				<td>Address</td>
				<td><form:input path="studentFatherDetail.address" />
				<form:errors path="studentFatherDetail.address" cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.address" />
				<form:errors path="studentMotherDetail.address" cssStyle="color:red" /></td>
			</tr>
			<tr>
				<td>Telephone Number</td>
				<td><form:input path="studentFatherDetail.phoneNumber" />
				<form:errors path="studentFatherDetail.phoneNumber"
					cssStyle="color:red" /></td>
				<td><form:input path="studentMotherDetail.phoneNumber" />
				<form:errors path="studentMotherDetail.phoneNumber"
					cssStyle="color:red" /></td>
			</tr>
		</table>








		<form:button>Submit Order</form:button>

	</form:form>

</body>
</html>