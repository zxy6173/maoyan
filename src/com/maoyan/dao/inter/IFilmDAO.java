package com.maoyan.dao.inter;

import java.util.List;
import java.util.Map;

import com.maoyan.bean.FilmBean;

public interface IFilmDAO {
	List getAllFilms();
	List getFilmsByCondition(FilmBean bean);
	List getFilmsWithSort(Map hashMap);
}
