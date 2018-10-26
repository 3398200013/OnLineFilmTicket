package com.hjy.entity;

import java.util.Date;

public class TRondaSeat {
	private int rsid;
	private int aid;
	private String seatno;
	private int state;
	private Date selectTime;
	public int getRsid() {
		return rsid;
	}
	public void setRsid(int rsid) {
		this.rsid = rsid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getSeatno() {
		return seatno;
	}
	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getSelectTime() {
		return selectTime;
	}
	public void setSelectTime(Date selectTime) {
		this.selectTime = selectTime;
	}
	

}
