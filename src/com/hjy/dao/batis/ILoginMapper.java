package com.hjy.dao.batis;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hjy.entity.TMovie;
import com.hjy.entity.TUser;

public interface ILoginMapper {
	public TUser selectUser(@Param("uname")String uname, @Param("pwd")String pwd);
	public int updatePic(@Param("uname")String uname, @Param("userpic")String userpic);
	
	public List<TMovie> selectNameMovie(@Param("moviename")String moviename);
}
