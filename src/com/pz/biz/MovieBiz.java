package com.pz.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pz.dao.MovieDao;
import com.pz.entity.Movie;

@Service("movieBiz")
@Transactional(readOnly = true)
public class MovieBiz {
	@Autowired
	private MovieDao movieDao;
	/**
	 * 查询最新上映影片
	 * @return
	 * @throws Exception
	 */
	public Movie getNewMovie() throws Exception{
		return movieDao.getNewMovie();
	}
	/**
	 * 查询即将上映影片
	 * @return
	 * @throws Exception
	 */
	public Movie getFutureMovie() throws Exception{
		return movieDao.getFutureMovie();
	}
}
