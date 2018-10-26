package com.hjy.dao.batis;

import java.util.List;

import com.hjy.entity.Movie;
import com.hjy.entity.TActor;

public interface IMovieMapper {
	public List<Movie> getNewMovie() throws Exception;
	public List<Movie> getFutureMovie() throws Exception;
	
	public Movie getMovie(String mid) throws Exception;
	public List<TActor> getActor(String mid) throws Exception;
	
	public List<Movie> getAllNewMovie() throws Exception;
	public List<Movie> getAllFutureMovie() throws Exception;
}
