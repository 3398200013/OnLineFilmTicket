package com.hjy.dao.batis;

import java.util.Date;
import java.util.List;

import com.hjy.entity.TGrally;
import com.hjy.entity.TMovie;

public interface IMovieMapper {
	public List<TMovie> getNewMovie() throws Exception;
	public List<TMovie> getFutureMovie() throws Exception;
	public TMovie getMovie(String mid) throws Exception;
	
	
	public List<TGrally> getAllGrally()throws Exception;
	public List<TMovie> getNewestMovie(Date indate)throws Exception;
	public List<TMovie> getsyMovie(Date indate) throws Exception;
	
	public List<TMovie> getAllNewMovie() throws Exception;
	public List<TMovie> getAllFutureMovie() throws Exception;
}
