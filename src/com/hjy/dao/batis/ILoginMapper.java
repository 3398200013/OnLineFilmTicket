package com.hjy.dao.batis;

import org.apache.ibatis.annotations.Param;

import com.hjy.entity.TUser;

public interface ILoginMapper {
	public TUser selectUser(@Param("uname")String uname, @Param("pwd")String pwd);
	public int updatePic(@Param("uname")String uname, @Param("userpic")String userpic);
	
}
