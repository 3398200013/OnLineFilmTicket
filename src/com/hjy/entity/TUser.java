package com.hjy.entity;

public class TUser {
	private String uname;
	private String pwd;
	private String tel;
	private String usertxt;
	private Integer role;
	private Integer balance;
	private byte[] userpic;
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUsertxt() {
		return usertxt;
	}
	public void setUsertxt(String usertxt) {
		this.usertxt = usertxt;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	public Integer getBalance() {
		return balance;
	}
	public void setBalance(Integer balance) {
		this.balance = balance;
	}
	public byte[] getUserpic() {
		return userpic;
	}
	public void setUserpic(byte[] userpic) {
		this.userpic = userpic;
	}
}
