package com.hjy.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hjy.biz.MovieBiz;
import com.hjy.entity.TActor;
import com.hjy.entity.TMovie;
import com.hjy.entity.TSeat;
import com.hjy.entity.TSeatAndMovie;
import com.icss.util.Log;

@Controller
public class MovieAction {
	@Autowired
	private MovieBiz moviebiz;

	@RequestMapping("/movies")
	public String getMovies(Model model, String mid) {
		String strRet;
		List<TMovie> newlist = null;
		List<TMovie> futurelist = null;
		try {
			newlist = moviebiz.getNewMovie();
			futurelist = moviebiz.getFutureMovie();
		} catch (Exception e) {
			Log.logger.error(e.getMessage(), e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("mid", mid);
		model.addAttribute("newlist", newlist);
		model.addAttribute("futurelist", futurelist);
		strRet = "main/showList.jsp";
		return strRet;
	}

	@RequestMapping("/movie")
	public String getMovie(String mid,HttpSession session,Model model){
		String strRet;

		TMovie movie = null;
		List<TActor> actors = null;
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
	public String getAllNewMovies(Model model) {
		String strRet;
		List<TMovie> allnewmovie = null;
		try {
			allnewmovie = moviebiz.getAllNewMovie();
		} catch (Exception e) {
			Log.logger.error(e.getMessage(), e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("allnewmovie", allnewmovie);
		strRet = "main/allNewMovie.jsp";
		return strRet;
	}

	@RequestMapping("/allfuturemovie")
	public String getAllFutureMovies(Model model) {
		String strRet;
		List<TMovie> allfuturemovie = null;
		try {
			allfuturemovie = moviebiz.getAllFutureMovie();
		} catch (Exception e) {
			Log.logger.error(e.getMessage(), e);
			model.addAttribute("msg", "网络异常，请和管理员联系");
			strRet = "/error/error.jsp";
		}
		model.addAttribute("allfuturemovie", allfuturemovie);
		strRet = "main/allFutureMovie.jsp";
		return strRet;
	}
	
	@RequestMapping("/selectSeatMovie")
	@ResponseBody
	public TSeatAndMovie selectSeatMovie(){
		TSeatAndMovie movie = new TSeatAndMovie();
		List<TSeat> states  = moviebiz.getSeatsMovie("1");
		movie.setStates(states);
		movie.setMovie_name("无双");
		movie.setMovie_language("英语");
		movie.setRow("10");
		movie.setCol("10");
		return movie;
	}
	
}
