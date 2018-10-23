package com.hjy.dao.batis;

import com.hjy.entity.Movie;

public interface IMovieMapper {
	public Movie getNewMovie() throws Exception;
	public Movie getFutureMovie() throws Exception;
}
