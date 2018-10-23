package com.hjy.action;

import org.springframework.stereotype.Controller;

import com.hjy.biz.MovieBiz;
import com.hjy.entity.Movie;

import sun.awt.AppContext;

@Controller
public class MovieAction {
	public Movie getNewMovie(){
		MovieBiz biz = AppContext.getBean("");
		
		return null;
		
	}

}
