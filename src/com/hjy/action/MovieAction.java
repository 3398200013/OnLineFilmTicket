package com.hjy.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.MovieBiz;
import com.hjy.entity.TMovie;
import com.icss.util.Log;



@Controller
public class MovieAction {
	@Autowired
	private MovieBiz moviebiz;
	
	@RequestMapping("/movies")
	public String getMovies(Model model,String type){
		String strRet;
		List<TMovie> newlist = null;
		List<TMovie> futurelist = null;
		try {
			newlist = moviebiz.getNewMovie();
			futurelist = moviebiz.getFutureMovie();
		} catch (Exception e) {
			Log.logger.error(e.getMessage(),e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("type", type);
		model.addAttribute("newlist", newlist);
		model.addAttribute("futurelist", futurelist);
		strRet = "main/showList.jsp";
		return strRet;
	}
	@RequestMapping("/movie")
	public String getMovie(String mid,Model model){
		String strRet;
		TMovie movie = null;
		try {
			movie = moviebiz.getMovie(mid);
		} catch (Exception e) {
			Log.logger.error(e.getMessage(),e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("movie", movie);
		strRet="main/deatails.jsp";
		return strRet;	
	}
}
