package akms.schoolSoft.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

public class StudentDetails {

	@NotBlank
	private String name;
	@NotBlank
	private String dob;
	@NotBlank
	private String gender;
	@NotBlank
	private String bloodGroup;
	@NotBlank
	private String nationality;
	@NotBlank
	private String religion;
	@NotBlank
	private String classAndSection;
	@NotBlank
	private String caste;
	@NotBlank
	private String dateOfAdmission;
	@NotNull
	private int grNumber;
	@NotBlank
	private String modeOfTransport;
	@NotBlank
	private String busRoute;
	@NotBlank
	private String pickupPoint;
	@NotBlank
	private String casteCertificate;
	@NotBlank
	private String physicallyHandicapped;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getClassAndSection() {
		return classAndSection;
	}

	public void setClassAndSection(String classAndSection) {
		this.classAndSection = classAndSection;
	}

	public String getCaste() {
		return caste;
	}

	public void setCaste(String caste) {
		this.caste = caste;
	}

	public String getDateOfAdmission() {
		return dateOfAdmission;
	}

	public void setDateOfAdmission(String dateOfAdmission) {
		this.dateOfAdmission = dateOfAdmission;
	}

	public int getGrNumber() {
		return grNumber;
	}

	public void setGrNumber(int grNumber) {
		this.grNumber = grNumber;
	}

	public String getModeOfTransport() {
		return modeOfTransport;
	}

	public void setModeOfTransport(String modeOfTransport) {
		this.modeOfTransport = modeOfTransport;
	}

	public String getBusRoute() {
		return busRoute;
	}

	public void setBusRoute(String busRoute) {
		this.busRoute = busRoute;
	}

	public String getPickupPoint() {
		return pickupPoint;
	}

	public void setPickupPoint(String pickupPoint) {
		this.pickupPoint = pickupPoint;
	}

	public String getCasteCertificate() {
		return casteCertificate;
	}

	public void setCasteCertificate(String casteCertificate) {
		this.casteCertificate = casteCertificate;
	}

	public String getPhysicallyHandicapped() {
		return physicallyHandicapped;
	}

	public void setPhysicallyHandicapped(String physicallyHandicapped) {
		this.physicallyHandicapped = physicallyHandicapped;
	}

	@Override
	public String toString() {
		return "StudentDetails [name=" + name + ", dob=" + dob + ", gender="
				+ gender + ", bloodGroup=" + bloodGroup + ", nationality="
				+ nationality + ", religion=" + religion + ", classAndSection="
				+ classAndSection + ", caste=" + caste + ", dateOfAdmission="
				+ dateOfAdmission + ", grNumber=" + grNumber
				+ ", modeOfTransport=" + modeOfTransport + ", busRoute="
				+ busRoute + ", pickupPoint=" + pickupPoint
				+ ", casteCertificate=" + casteCertificate
				+ ", physicallyHandicapped=" + physicallyHandicapped + "]";
	}

}
