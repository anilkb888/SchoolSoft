package akms.schoolSoft.model;

import javax.validation.Valid;

public class StudentInformation {

	@Valid
	private StudentDetails studentDetails = new StudentDetails();

	@Valid
	private StudentParentDetails studentMotherDetail = new StudentParentDetails();

	@Valid
	private StudentParentDetails studentFatherDetail = new StudentParentDetails();

	public StudentDetails getStudentDetails() {
		return studentDetails;
	}

	public void setStudentDetails(StudentDetails studentDetails) {
		this.studentDetails = studentDetails;
	}

	public StudentParentDetails getStudentMotherDetail() {
		return studentMotherDetail;
	}

	public void setStudentMotherDetail(StudentParentDetails studentMotherDetail) {
		this.studentMotherDetail = studentMotherDetail;
	}

	public StudentParentDetails getStudentFatherDetail() {
		return studentFatherDetail;
	}

	public void setStudentFatherDetail(StudentParentDetails studentFatherDetail) {
		this.studentFatherDetail = studentFatherDetail;
	}

}
