package com.hjy.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.MovieBiz;

@Controller
public class SeatAction {
	
	@Autowired
	private MovieBiz movieBiz;
	
	@RequestMapping("/selectSeat.do")
	public String selectSeat(){
		return "/main/SelectSeat.jsp";
	}
	
}
