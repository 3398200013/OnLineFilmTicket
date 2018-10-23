package com.pz.dao.batis;

import com.pz.entity.Movie;

public interface IMovieMapper {
	public Movie getNewMovie() throws Exception;
	public Movie getFutureMovie() throws Exception;
}
