package com.hjy.entity;

import java.util.List;

public class TSeatAndMovie {
	private String movie_name;
	private String movie_language;
	private String screens_name;
	private String row;
	private String col;
	private List<TSeat> states;
	
	public List<TSeat> getStates() {
		return states;
	}
	public void setStates(List<TSeat> states) {
		this.states = states;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getMovie_language() {
		return movie_language;
	}
	public void setMovie_language(String movie_language) {
		this.movie_language = movie_language;
	}
	public String getScreens_name() {
		return screens_name;
	}
	public void setScreens_name(String screens_name) {
		this.screens_name = screens_name;
	}
	public String getRow() {
		return row;
	}
	public void setRow(String row) {
		this.row = row;
	}
	public String getCol() {
		return col;
	}
	public void setCol(String col) {
		this.col = col;
	}
	
}
