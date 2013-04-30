package akms.schoolSoft.db;

import java.util.List;

import akms.schoolSoft.model.StudentDetails;
import akms.schoolSoft.model.StudentInformation;
import akms.schoolSoft.model.StudentParentDetails;

public interface StudentDetailsDao {

	public abstract List<StudentDetails> findStudents(String studentClass);
	
	public abstract StudentDetails findStudentDetail(int grNumber);
	
	public abstract List<StudentParentDetails> findStudentParentDetails(int grNumber); 
	
	public abstract void createStudentInformation(StudentInformation studentInformation);
}
