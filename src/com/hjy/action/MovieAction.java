package com.hjy.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.MovieBiz;
import com.hjy.entity.Movie;

import sun.awt.AppContext;

@Controller
public class MovieAction {
	@Autowired
	private MovieBiz moviebiz;
	
	@RequestMapping("/movie")
	public String getNewMovie(){
		
		return "main/showList.jsp";
		
	}

}
