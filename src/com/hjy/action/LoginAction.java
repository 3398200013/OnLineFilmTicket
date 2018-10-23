package com.hjy.action;

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
	public String selectLogin(String uname, String upwd, HttpSession session){
		TUser user = loginBiz.selectUser(uname, upwd);
		session.setAttribute("user", user);
		return "main/head.jsp";
	}
}
