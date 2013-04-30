package akms.schoolSoft.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import akms.schoolSoft.db.StudentDetailsDao;
import akms.schoolSoft.model.StudentDetails;
import akms.schoolSoft.model.StudentInformation;
import akms.schoolSoft.model.StudentParentDetails;

@Controller
public class StudentDetailsController {

	private StudentDetailsDao studentDetailsDao;

	public StudentDetailsController(StudentDetailsDao studentDetailsDao) {
		this.studentDetailsDao = studentDetailsDao;
		// TODO Auto-generated constructor stub
	}

	@RequestMapping("studentDetails")
	public String classList() {
		return "class_list";
	}

	@RequestMapping("studentList")
	public String studentList(@RequestParam("class") String studentClass,
			Model model) {

		System.out.println(studentClass);
		List<StudentDetails> studentList = studentDetailsDao
				.findStudents(studentClass);

		model.addAttribute("studentList", studentList);
		return "class_list";
	}

	@RequestMapping("studentInformation")
	public String studentInformation(@RequestParam("gr_num") int grNumber,
			Model model) {

		StudentDetails studentDetails = studentDetailsDao
				.findStudentDetail(grNumber);
		model.addAttribute("studentDetail", studentDetails);

		StudentParentDetails studentMotherDetail = null;
		StudentParentDetails studentFatherDetail = null;

		List<StudentParentDetails> studentParentDetails = studentDetailsDao
				.findStudentParentDetails(grNumber);

		// Separating Father and Mother Details;
		for (StudentParentDetails parentDetail : studentParentDetails) {
			if (parentDetail.getRelation().equals("Mother")) {
				studentMotherDetail = parentDetail;
			} else {
				studentFatherDetail = parentDetail;
			}
		}

		// System.out.println(studentMotherDetail.getName());
		// System.out.println(studentFatherDetail.getName());

		model.addAttribute("studentMotherDetail", studentMotherDetail);
		model.addAttribute("studentFatherDetail", studentFatherDetail);
		return "student_information";
	}

	@RequestMapping(value = "/createForm")
	public String createStudentInformation(Model model) {

		StudentInformation studentInformation = new StudentInformation();
		model.addAttribute("studentRegistrationForm", studentInformation);

		return "create_student_information";
	}

	@RequestMapping(value = "/submitStudentInformation", method = RequestMethod.POST)
	public String submitStudentInformation(
			@ModelAttribute("studentRegistrationForm") @Valid StudentInformation studentRegistrationForm,
			BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {

			return "create_student_information";
		} else {
			studentDetailsDao.createStudentInformation(studentRegistrationForm);
			return "success";
		}
	}

}
