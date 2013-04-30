package akms.schoolSoft.model;


import org.hibernate.validator.constraints.NotBlank;

public class StudentParentDetails {

	private int grNumber;
	@NotBlank
	private String name;
	@NotBlank
	private String motherTongue;
	@NotBlank
	private String nationality;
	@NotBlank
	private String occupation;
	@NotBlank
	private String nameOfOffice;
	@NotBlank
	private String address;
	@NotBlank
	private String phoneNumber;
	private String Relation;

	public int getGrNumber() {
		return grNumber;
	}

	public void setGrNumber(int grNumber) {
		this.grNumber = grNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMotherTongue() {
		return motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getNameOfOffice() {
		return nameOfOffice;
	}

	public void setNameOfOffice(String nameOfOffice) {
		this.nameOfOffice = nameOfOffice;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getRelation() {
		return Relation;
	}

	public void setRelation(String relation) {
		Relation = relation;
	}
	
	

}
