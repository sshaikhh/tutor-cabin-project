package dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_admin")
public class Admin {
	
	@Id
	@Column
	private int a_id;
	@Column
	private String username;
	@Column
	private String password;
	
	
	public int getT_id() {
		return a_id;
	}
	public void setT_id(int t_id) {
		this.a_id = t_id;
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

}
