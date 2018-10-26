package com.hjy.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.MovieBiz;
import com.hjy.entity.TGrally;
import com.hjy.entity.TMovie;
import com.icss.util.Log;

@Controller
public class mainAction {
	
	@Autowired
	private MovieBiz movieBiz;
	
	@RequestMapping("/main.do")
	public String getAllGrally(Model model)throws Exception{
		String strRet;
		Date indate = new Date();
		try {
			
			List<TGrally> grallys = movieBiz.getAllGrally();
			List<TMovie> movies = movieBiz.getNewestMovie(indate);
			List<TMovie> symovies = movieBiz.getsyMovie(indate);
			
			model.addAttribute("grallys",grallys);
			model.addAttribute("movies",movies);
			model.addAttribute("symovies",symovies);
			strRet = "/main/main.jsp";
		} catch (Exception e) {
			Log.logger.error(e.getMessage(),e);
			model.addAttribute("msg", "错误");
			strRet = "/error/error.jsp";
		}
		return strRet;
	}

}
