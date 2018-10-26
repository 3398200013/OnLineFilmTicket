package com.hjy.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.LoginBiz;
import com.hjy.entity.TUser;

@Controller
public class LoginAction {

	@Autowired
	private LoginBiz loginBiz;

	@RequestMapping("/login")
	public String selectLogin(String uname, String upwd, HttpServletRequest request) {
		String strRet;
		
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";
		TUser user = loginBiz.selectUser(uname, upwd);
		request.getSession().setAttribute("user", user);
		if (user == null) {
			request.setAttribute("error", 1);
			strRet = "forward:Login.jsp";
		} else {
			strRet = "forward:main.do";
		}
		return strRet;
	}


	@RequestMapping("/picSave")
	public String getPicSave(HttpSession session){
		TUser user = (TUser) session.getAttribute("user");
		try {
			if(user != null){
				loginBiz.updatePic(user.getUname(), user.getUserpic());
			}
			return "forward:main.do";
		} catch (Exception e) {
			e.printStackTrace();
			return "/img/ico.png";
		}
	}
	
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		session.invalidate();
		return "forward:main.do";
	}
	
	@RequestMapping("/setCity")
	public void setCity(String city,HttpSession session){
		session.setAttribute("city", city);
		return;
	}
}
