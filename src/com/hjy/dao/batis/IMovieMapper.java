package com.hjy.dao.batis;

import java.util.Date;
import java.util.List;

<<<<<<< HEAD
import com.hjy.entity.Movie;
import com.hjy.entity.TActor;

public interface IMovieMapper {
	public List<Movie> getNewMovie() throws Exception;
	public List<Movie> getFutureMovie() throws Exception;
	
	public Movie getMovie(String mid) throws Exception;
	public List<TActor> getActor(String mid) throws Exception;
=======
import com.hjy.entity.TGrally;
import com.hjy.entity.TMovie;

public interface IMovieMapper {
	public List<TMovie> getNewMovie() throws Exception;
	public List<TMovie> getFutureMovie() throws Exception;
	public TMovie getMovie(String mid) throws Exception;
>>>>>>> a8fa99e60d39e9dd10429fb20728b5af30179d6e
	
	
	public List<TGrally> getAllGrally()throws Exception;
	public List<TMovie> getNewestMovie(Date indate)throws Exception;
	public List<TMovie> getsyMovie(Date indate) throws Exception;
	
	public List<TMovie> getAllNewMovie() throws Exception;
	public List<TMovie> getAllFutureMovie() throws Exception;
}
