package com.hjy.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD:src/com/hjy/dao/MovieDao.java
import com.hjy.entity.Movie;
import com.pz.dao.BaseDao;
import com.pz.dao.batis.IMovieMapper;
=======
import com.hjy.dao.batis.IMovieMapper;
import com.pz.dao.BaseDao;
import com.pz.entity.Movie;
>>>>>>> db15e7c5b94b495a26afcdc6c90d2a1fa62be6f6:src/com/pz/dao/MovieDao.java

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
