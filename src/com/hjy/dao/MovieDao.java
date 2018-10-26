package com.hjy.dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.dao.batis.IMovieMapper;
import com.hjy.entity.TGrally;
import com.hjy.entity.TMovie;



@Repository("movieDao")
public class MovieDao{

	@Autowired
	private IMovieMapper movieMapper;
	/**
	 * 查询部分最新上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getNewMovie() throws Exception{
		return movieMapper.getNewMovie();
	}
	/**
	 * 查询部分即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getFutureMovie() throws Exception{
		return movieMapper.getFutureMovie();
	}
	/**
	 * 查询影片详细信息
	 * @param mid
	 * @return
	 * @throws Exception
	 */
	public TMovie getMovie(String mid) throws Exception{
		return movieMapper.getMovie(mid);
	}
	

	/**
	 * 画廊
	 * @return
	 * @throws Exception
	 */
	public List<TGrally> getAllGrally()throws Exception{
		return movieMapper.getAllGrally();
	}
	/**
	 * 最近上映
	 * @param indate
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getNewestMovie(Date indate)throws Exception{
		return movieMapper.getNewestMovie(indate);
	}
	
	/**
	 * 即将上映
	 * @param indate
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getsyMovie(Date indate) throws Exception{
		
		return movieMapper.getsyMovie(indate);
	}
	
	

	
	/**
	 * 查询全部最新上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getAllNewMovie() throws Exception{
		return movieMapper.getAllNewMovie();
	}
	/**
	 * 查询全部即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getAllFutureMovie() throws Exception{
		return movieMapper.getAllFutureMovie();
	}
}
