package com.hjy.entity;

import java.util.Date;

public class Movie {
	private String mid;
	private String mname;
	private String length;
	private String area;
	private String type;
	private String director;
	private float score;
	private String state;
	private String details;
	private byte[] cover;
	private Date bjdate;
	private int sealnumber;
	private String actor;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public byte[] getCover() {
		return cover;
	}
	public void setCover(byte[] cover) {
		this.cover = cover;
	}
	public Date getBjdate() {
		return bjdate;
	}
	public void setBjdate(Date bjdate) {
		this.bjdate = bjdate;
	}
	public int getSealnumber() {
		return sealnumber;
	}
	public void setSealnumber(int sealnumber) {
		this.sealnumber = sealnumber;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	
}
