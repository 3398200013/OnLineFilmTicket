package com.hjy.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hjy.biz.LoginBiz;
import com.hjy.entity.TUser;
import com.icss.util.SysConfig;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;

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
			strRet = "forward:movie.do";
		}
		return strRet;
	}


	@RequestMapping("/pic")
	@ResponseBody
	public String getPicSave(String uname){
		
		try {
			String imgServerUrl = SysConfig.getImgServerUrl();
			String img = imgServerUrl + "/" + uname + "jpg";
			return img;
		} catch (Exception e) {
			e.printStackTrace();
			return "/img/ico.png";
		}
	}
	
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		session.invalidate();
		return "forward:movie.do";
	}
	
	
}
