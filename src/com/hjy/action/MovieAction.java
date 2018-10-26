package com.hjy.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.MovieBiz;
<<<<<<< HEAD
import com.hjy.entity.Movie;
import com.hjy.entity.TActor;
=======
import com.hjy.entity.TMovie;
>>>>>>> a8fa99e60d39e9dd10429fb20728b5af30179d6e
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
	public String getMovie(String mid,HttpSession session,Model model){
		String strRet;
<<<<<<< HEAD
		Movie movie = null;
		List<TActor> actors = null;
=======
		TMovie movie = null;
>>>>>>> a8fa99e60d39e9dd10429fb20728b5af30179d6e
		try {
			movie = moviebiz.getMovie(mid);
			actors = moviebiz.getActor(mid);
		} catch (Exception e) {
			Log.logger.error(e.getMessage(),e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		session.setAttribute("movie", movie);
		model.addAttribute("actors", actors);
		strRet="main/deatails.jsp";
		return strRet;	
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/allnewmovie")
	public String getAllNewMovies(Model model){
		String strRet;
		List<TMovie> allnewmovie = null;
		try {
			allnewmovie = moviebiz.getAllNewMovie();
		} catch (Exception e) {
			Log.logger.error(e.getMessage(),e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("allnewmovie", allnewmovie);
		strRet = "main/allNewMovie.jsp";
		return strRet;
	}
	@RequestMapping("/allfuturemovie")
	public String getAllFutureMovies(Model model){
		String strRet;
		List<TMovie> allfuturemovie = null;
		try {
			allfuturemovie = moviebiz.getAllFutureMovie();
		} catch (Exception e) {
			Log.logger.error(e.getMessage(),e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("allfuturemovie", allfuturemovie);
		strRet = "main/allFutureMovie.jsp";
		return strRet;
	}
}
