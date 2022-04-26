package medicare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	@Column(length = 30)
	private String userid;
	
	@Column(length = 30)
	private String pwd;
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	public Admin(String userid, String pwd) {
		this.userid = userid;
		this.pwd = pwd;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
