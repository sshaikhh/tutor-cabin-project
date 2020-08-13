package dao;
import javax.persistence.*;

@Entity
@Table(name="tbl_student")
public class Student {

@Id
@Column
private String username;

@Column
private String password;

@Column
private String emailid;

@Column
private String mobileno;

@Column
private String userclass;

@Column
private String subject;

@Column
private int status;


public int getStatus() {
	return status;
}

public void setStatus(int status) {
	this.status = status;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getEmailid() {
	return emailid;
}

public void setEmailid(String emailid) {
	this.emailid = emailid;
}

public String getMobileno() {
	return mobileno;
}

public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}

public String getUserclass() {
	return userclass;
}

public void setUserclass(String userclass) {
	this.userclass = userclass;
}

public String getSubject() {
	return subject;
}

public void setSubject(String subject) {
	this.subject = subject;
}



	
	
}
