package com.hjy.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjy.dao.MovieDao;
import com.hjy.entity.Movie;

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
	public List<Movie> getNewMovie() throws Exception{
		return movieDao.getNewMovie();
	}
	/**
	 * 查询即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<Movie> getFutureMovie() throws Exception{
		return movieDao.getFutureMovie();
	}
}
