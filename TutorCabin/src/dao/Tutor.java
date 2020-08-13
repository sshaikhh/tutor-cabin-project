package dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="tbl_tutor_reg")
public class Tutor {
	
	@Id
	@Column
	private int tutorid;
	@Column
	private String t_name;
	@Column
	private String emailid;
	@Column
	private String password;
	@Column
	private String contact;
	@Column
	private String education;
	@Column
	private String experience;
	@Column
	private String boardtoTeach;
	@Column
	private String dob;
	@Column
	private String subjecttoTeach;
	@Column
	private String address;
	@Column
	private String city;
	@Column
	private int status;
	@Column
	private String photo;
	
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	public int getTutorid() {
		return tutorid;
	}
	public void setTutorid(int tutorid) {
		this.tutorid = tutorid;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getBoardtoTeach() {
		return boardtoTeach;
	}
	public void setBoardtoTeach(String boardtoTeach) {
		this.boardtoTeach = boardtoTeach;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getSubjecttoTeach() {
		return subjecttoTeach;
	}
	public void setSubjecttoTeach(String subjecttoTeach) {
		this.subjecttoTeach = subjecttoTeach;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	

}
