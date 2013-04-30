package akms.schoolSoft.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import akms.schoolSoft.model.StudentDetails;
import akms.schoolSoft.model.StudentInformation;
import akms.schoolSoft.model.StudentParentDetails;

public class JdbcStudentDetailsDao implements StudentDetailsDao {

	private JdbcTemplate jdbcTemplate;

	public JdbcStudentDetailsDao(DataSource dataSource) {
		super();
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<StudentDetails> findStudents(String studentClass) {
		return jdbcTemplate
				.query("select gr_number, name from student_details where class_section=?",
						new StudentListRowMapper(), studentClass);
	}

	static class StudentListRowMapper implements RowMapper<StudentDetails> {

		public StudentDetails mapRow(ResultSet rs, int count)
				throws SQLException {
			StudentDetails studentList = new StudentDetails();

			studentList.setName(rs.getString("name"));
			studentList.setGrNumber(rs.getInt("gr_number"));

			// studentDetails.setBusRoute(rs.getString("bus_route"));
			// studentDetails.setCaste(rs.getString("caste"));
			// studentDetails.setCasteCertificate(rs.getString("caste_certi"));
			// studentDetails.setDateOfAdmission(rs.getString("DATE_ADMISSION"));
			// studentDetails.setClassAndSection(rs.getString("class_section"));

			return studentList;
		}
	}

	public StudentDetails findStudentDetail(int grNumber) {
		// TODO Auto-generated method stub

		return jdbcTemplate.queryForObject(
				"select * from student_details where gr_number=?",
				new StudentDetailsRowMapper(), grNumber);
	}

	static class StudentDetailsRowMapper implements RowMapper<StudentDetails> {

		public StudentDetails mapRow(ResultSet rs, int count)
				throws SQLException {
			// TODO Auto-generated method stub

			StudentDetails studentDetails = new StudentDetails();

			studentDetails.setBloodGroup(rs.getString("blood_group"));
			studentDetails.setBusRoute(rs.getString("bus_route"));
			studentDetails.setCaste(rs.getString("caste"));
			studentDetails.setCasteCertificate(rs.getString("caste_certi"));
			studentDetails.setClassAndSection(rs.getString("class_section"));
			studentDetails.setDateOfAdmission(rs.getString("DATE_ADMISSION"));
			studentDetails.setDob(rs.getString("dob"));
			studentDetails.setGender(rs.getString("gender"));
			studentDetails.setGrNumber(rs.getInt("gr_number"));
			studentDetails.setModeOfTransport(rs.getString("mode_transport"));
			studentDetails.setName(rs.getString("name"));
			studentDetails.setNationality(rs.getString("nationality"));
			studentDetails.setPhysicallyHandicapped(rs.getString("phy_handy"));
			studentDetails.setPickupPoint(rs.getString("pickup_point"));
			studentDetails.setReligion(rs.getString("religion"));

			return studentDetails;
		}

	}

	public List<StudentParentDetails> findStudentParentDetails(int grNumber) {
		// TODO Auto-generated method stub
		return jdbcTemplate.query(
				"select * from student_parent_details where gr_number=?",
				new StudentParentDetailsRowMapper(), grNumber);
	}

	static class StudentParentDetailsRowMapper implements
			RowMapper<StudentParentDetails> {

		public StudentParentDetails mapRow(ResultSet rs, int count)
				throws SQLException {
			// TODO Auto-generated method stub

			StudentParentDetails studentParentDetails = new StudentParentDetails();

			studentParentDetails.setAddress(rs.getString("address"));
			studentParentDetails.setGrNumber(rs.getInt("gr_number"));
			studentParentDetails.setMotherTongue(rs.getString("mother_tongue"));
			studentParentDetails.setName(rs.getString("name"));
			studentParentDetails
					.setNameOfOffice(rs.getString("name_of_office"));
			studentParentDetails.setNationality(rs.getString("nationality"));
			studentParentDetails.setOccupation(rs.getString("occupation"));
			studentParentDetails.setPhoneNumber(rs.getString("phone_number"));
			studentParentDetails.setRelation(rs.getString("relation"));

			return studentParentDetails;
		}

	}

	public void createStudentInformation(StudentInformation studentInformation) {
		// TODO Auto-generated method stub

		StudentDetails studentDetails = studentInformation.getStudentDetails();

		StudentParentDetails studentFatherDetails = studentInformation
				.getStudentFatherDetail();
		StudentParentDetails studentMotherDetails = studentInformation
				.getStudentMotherDetail();

		jdbcTemplate
				.update("insert into student_details(gr_number, name, Gender,"
						+ " dob,nationality, blood_group, religion , class_section, caste,"
						+ " date_admission, mode_transport, bus_route,	pickup_point,"
						+ " caste_certi, phy_handy) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
						studentDetails.getGrNumber(), studentDetails.getName(),
						studentDetails.getGender(), studentDetails.getDob(),
						studentDetails.getNationality(),
						studentDetails.getBloodGroup(),
						studentDetails.getReligion(),
						studentDetails.getClassAndSection(),
						studentDetails.getCaste(),
						studentDetails.getDateOfAdmission(),
						studentDetails.getModeOfTransport(),
						studentDetails.getBusRoute(),
						studentDetails.getPickupPoint(),
						studentDetails.getCasteCertificate(),
						studentDetails.getPhysicallyHandicapped());

		jdbcTemplate
				.update("insert into student_parent_details(gr_number, name, nationality,"
						+ " mother_tongue, occupation, name_of_office, address, phone_number,"
						+ " relation) values(?,?,?,?,?,?,?,?,?)",
						studentDetails.getGrNumber(),
						studentFatherDetails.getName(),
						studentFatherDetails.getNationality(),
						studentFatherDetails.getMotherTongue(),
						studentFatherDetails.getOccupation(),
						studentFatherDetails.getNameOfOffice(),
						studentFatherDetails.getAddress(),
						studentFatherDetails.getPhoneNumber(), "Father");
		
		jdbcTemplate
		.update("insert into student_parent_details(gr_number, name, nationality,"
				+ " mother_tongue, occupation, name_of_office, address, phone_number,"
				+ " relation) values(?,?,?,?,?,?,?,?,?)",
				studentDetails.getGrNumber(),
				studentMotherDetails.getName(),
				studentMotherDetails.getNationality(),
				studentMotherDetails.getMotherTongue(),
				studentMotherDetails.getOccupation(),
				studentMotherDetails.getNameOfOffice(),
				studentMotherDetails.getAddress(),
				studentMotherDetails.getPhoneNumber(), "Mother");

	}
	// this.jdbcTemplate.update(
	// "insert into t_actor (first_name, last_name) values (?, ?)",
	// "Leonor", "Watling");
}
