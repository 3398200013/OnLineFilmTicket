package com.hjy.action;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjy.biz.CimenaBiz;
import com.hjy.entity.TCimena;
import com.hjy.entity.TDistrict;

@Controller
public class CimenaAction {
	@Autowired
	private CimenaBiz cimenabiz;
	
	@RequestMapping("/cimena")
	public String getTCimena(Model model){
		String strRet;
		strRet = "main/selectCimena.jsp";
		return strRet;
		
	}
}
