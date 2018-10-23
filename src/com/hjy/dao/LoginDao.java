package com.hjy.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.dao.batis.ILoginMapper;
import com.hjy.entity.TUser;

@Repository("LoginDao")
public class LoginDao {
	@Autowired
	private ILoginMapper loginMapper;
	
	
	/**
	 * 查询用户
	 * @param uname
	 * @param pwd
	 * @return
	 */
	public TUser selectUser(String uname, String pwd){
		return loginMapper.selectUser(uname,pwd);
	}
}
