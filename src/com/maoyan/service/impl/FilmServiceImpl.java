package com.maoyan.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.maoyan.bean.FilmBean;
import com.maoyan.common.Tools;
import com.maoyan.dao.impl.FilmDAOImpl;
import com.maoyan.dao.inter.IFilmDAO;
import com.maoyan.service.inter.IFilmService;

public class FilmServiceImpl implements IFilmService{
	private IFilmDAO dao = new FilmDAOImpl();
	@Override
	public Map showHotFilms() {
		HashMap map = new HashMap();
		FilmBean bean = new FilmBean();
		bean.setHot(1);
		List hotList = dao.getFilmsByCondition(bean);
		map.put("hotList", Tools.cutList(hotList, 0, 8));
		map.put("hotCount", hotList.size());
		return map;

	}

	@Override
	public Map showSoonFilms() {
		HashMap map = new HashMap();
		FilmBean bean = new FilmBean();
		bean.setSoon(1);
		List soonList = dao.getFilmsByCondition(bean);
		map.put("soonList", Tools.cutList(soonList, 0, 8));
		map.put("soonCount", soonList.size());

		return map;
	}

	@Override
	public Map showPlayFilms() {
		HashMap map = new HashMap();
		List playList = dao.getFilmsWithSort(map);
		map.put("playList", Tools.cutList(playList, 0, 7));
		map.put("playCount", playList.size());

		return map;
	}

	@Override
	public Map showFilmsOrderByBoxOffice() {
		HashMap map = new HashMap();
		map.put("boxOffice", 1);
		List boxOfficeList = dao.getFilmsWithSort(map);
		map.put("boxOfficeList", Tools.cutList(boxOfficeList, 0, 10));
		return map;
	}

	@Override
	public Map showFilmsOrderByWantWatch() {
		HashMap map = new HashMap();
		map.put("wantWatch", 1);
		List wantWatchList = dao.getFilmsWithSort(map);
		map.put("wantWatchList", Tools.cutList(wantWatchList, 0, 10));
		return map;
	}

	@Override
	public Map showFilmsOrderByUserGrade() {
		HashMap map = new HashMap();
		map.put("userGrade", 1);
		List userGradeList = dao.getFilmsWithSort(map);
		map.put("userGradeList", Tools.cutList(userGradeList, 0, 10));
		return map;
	}
	public static void main(String[] args) {
		IFilmService service = new FilmServiceImpl();
//		System.out.println(service.showFilmsOrderByBoxOffice());
//		System.out.println(service.showFilmsOrderByWantWatch());
		System.out.println(service.showFilmsOrderByUserGrade());
	}

}
