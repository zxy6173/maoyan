package com.maoyan.service.inter;

import java.util.List;
import java.util.Map;

public interface IFilmService {
	Map showHotFilms();
	Map showSoonFilms();
	Map showPlayFilms();
	Map showFilmsOrderByBoxOffice();
	Map showFilmsOrderByWantWatch();
	Map showFilmsOrderByUserGrade();
}
