package com.hjy.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.entity.Movie;
import com.pz.dao.BaseDao;
import com.pz.dao.batis.IMovieMapper;

@Repository("movieDao")
public class MovieDao{

	@Autowired
	private IMovieMapper movieMapper;
	/**
	 * 查询最新上映影片
	 * @return
	 * @throws Exception
	 */
	public Movie getNewMovie() throws Exception{
		return movieMapper.getNewMovie();
	}
	/**
	 * 查询即将上映影片
	 * @return
	 * @throws Exception
	 */
	public Movie getFutureMovie() throws Exception{
		return movieMapper.getFutureMovie();
	}
}
