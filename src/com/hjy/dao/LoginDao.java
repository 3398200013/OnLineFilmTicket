package com.hjy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.dao.batis.ILoginMapper;
import com.hjy.entity.TMovie;
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
	
	/**
	 * 保存照片
	 * @param uname
	 * @param pic
	 * @return
	 */
	public int updatePic(String uname, String userpic){
		int n = loginMapper.updatePic(uname,userpic);
		return n;
	}
	
	/**
	 * 根据名字查询电影
	 * @return
	 */
	public List<TMovie> selectNameMovie(String moviename){
		return loginMapper.selectNameMovie(moviename);
	}
}
