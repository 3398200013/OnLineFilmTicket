package com.hjy.dao.batis;

import java.util.List;

import com.hjy.entity.Movie;

public interface IMovieMapper {
	public List<Movie> getNewMovie() throws Exception;
	public List<Movie> getFutureMovie() throws Exception;
	public Movie getMovie(String mid) throws Exception;
	
	public List<Movie> getAllNewMovie() throws Exception;
	public List<Movie> getAllFutureMovie() throws Exception;
}
