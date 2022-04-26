package medicare.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Doctor {
	private String fname;
	private String lname;
	private String dob;
	private String gender;
	private String phone;
	private String address;
	private String qualification;
	private String speciality;
	private String diagservice;
	
	@Id
	private String docid;
	private String pwd;
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getDiagservice() {
		return diagservice;
	}
	public void setDiagservice(String diagservice) {
		this.diagservice = diagservice;
	}
	@Override
	public String toString() {
		return "Doctor [fname=" + fname + ", lname=" + lname + ", dob=" + dob + ", gender=" + gender + ", phone="
				+ phone + ", address=" + address + ", qualification=" + qualification + ", speciality=" + speciality
				+ ", diagservice=" + diagservice + ", doctorId=" + docid + ", pwd=" + pwd
				+ "]";
	}
	
	
}
