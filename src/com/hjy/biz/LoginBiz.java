package com.hjy.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjy.dao.LoginDao;
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
}
