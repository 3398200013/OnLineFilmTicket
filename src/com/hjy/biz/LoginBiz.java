package com.hjy.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjy.dao.LoginDao;
import com.hjy.entity.TMovie;
import com.hjy.entity.TUser;

@Service("LoginBiz")
@Transactional(readOnly = true)
public class LoginBiz {

	@Autowired
	private LoginDao loginDao;

	/**
	 * 查询用户
	 * @param uname
	 * @param pwd
	 * @return
	 */
	@Transactional(readOnly = false, rollbackFor = Throwable.class)
	public TUser selectUser(String uname, String pwd) {
		
		return loginDao.selectUser(uname, pwd);
	}
	
	/**
	 * 保存照片
	 * @param uname
	 * @param pic
	 * @return
	 */
	public int updatePic(String uname, String userpic){
		return loginDao.updatePic(uname,userpic);
	}
	
	/**
	 * 根据名字查询电影
	 * @return
	 */
	public List<TMovie> selectNameMovie(String moviename){
		return loginDao.selectNameMovie(moviename);
	}
}
