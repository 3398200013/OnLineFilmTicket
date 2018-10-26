package com.hjy.entity;

import java.util.Date;

public class TOutTicket {
	private int xno;
	private String uname;
	private int rid;
	private String seatno;
	private double realpay;
	private Date paytime;
	private int state;
	public int getXno() {
		return xno;
	}
	public void setXno(int xno) {
		this.xno = xno;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getSeatno() {
		return seatno;
	}
	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}
	public double getRealpay() {
		return realpay;
	}
	public void setRealpay(double realpay) {
		this.realpay = realpay;
	}
	public Date getPaytime() {
		return paytime;
	}
	public void setPaytime(Date paytime) {
		this.paytime = paytime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	

}
