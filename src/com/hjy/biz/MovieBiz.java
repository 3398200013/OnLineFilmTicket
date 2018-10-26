package com.hjy.biz;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjy.dao.MovieDao;
import com.hjy.entity.TGrally;
import com.hjy.entity.TMovie;

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
	public List<TMovie> getNewMovie() throws Exception{
		return movieDao.getNewMovie();
	}
	/**
	 * 查询即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getFutureMovie() throws Exception{
		return movieDao.getFutureMovie();
	}
	/**
	 * 查询影片详细信息
	 * @param mid
	 * @return
	 * @throws Exception
	 */
	public TMovie getMovie(String mid) throws Exception{
		return movieDao.getMovie(mid);
	}
	
	/**
	 * 画廊
	 * @return
	 * @throws Exception
	 */
	public List<TGrally> getAllGrally()throws Exception{
		return movieDao.getAllGrally();
	}
	/**
	 * 最新上映
	 * @param indate
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getNewestMovie(Date indate)throws Exception{
		
		return movieDao.getNewestMovie(indate);
	}
	/**
	 * 即将上映
	 * @param indate
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getsyMovie(Date indate) throws Exception{
		
		return movieDao.getsyMovie(indate);
	}
	
	/** 查询全部最新上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getAllNewMovie() throws Exception{
		return movieDao.getAllNewMovie();
	}
	/**
	 * 查询全部即将上映影片
	 * @return
	 * @throws Exception
	 */
	public List<TMovie> getAllFutureMovie() throws Exception{
		return movieDao.getAllFutureMovie();

	}
}
