package com.hjy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.dao.batis.IMovieMapper;
import com.hjy.entity.Movie;



@Repository("movieDao")
public class MovieDao{

	@Autowired
	private IMovieMapper movieMapper;
	/**
	 * 查询部分最新上映影片
	 * @return
	 * @throws Exception
	 */
	public List<Movie> getNewMovie() throws Exception{
		return movieMapper.getNewMovie();
	}
	/**
	 * 查询部分即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<Movie> getFutureMovie() throws Exception{
		return movieMapper.getFutureMovie();
	}
	/**
	 * 查询影片详细信息
	 * @param mid
	 * @return
	 * @throws Exception
	 */
	public Movie getMovie(String mid) throws Exception{
		return movieMapper.getMovie(mid);
	}
	
	
	/**
	 * 查询全部最新上映影片
	 * @return
	 * @throws Exception
	 */
	public List<Movie> getAllNewMovie() throws Exception{
		return movieMapper.getAllNewMovie();
	}
	/**
	 * 查询全部即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<Movie> getAllFutureMovie() throws Exception{
		return movieMapper.getAllFutureMovie();
	}
}
