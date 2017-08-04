package com.maoyan.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.maoyan.bean.FilmBean;
import com.maoyan.dao.BaseDAO;
import com.maoyan.dao.inter.IFilmDAO;

public class FilmDAOImpl extends BaseDAO implements IFilmDAO {

	@Override
	public List getAllFilms() {
		// TODO Auto-generated method stub
		SqlSession session = this.getSession();
		List list = session.selectList("selectAllFilm");
		session.close();
		return list;
	}
	@Override
	public List getFilmsByCondition(FilmBean bean) {
		// TODO Auto-generated method stub
		SqlSession session = this.getSession();
		List list =  session.selectList("selectFilmByCondition",bean);
		session.close();
		return list;
	}
	@Override
	public List getFilmsWithSort(Map hashMap) {
		// TODO Auto-generated method stub
		SqlSession session = this.getSession();
		List list =  session.selectList("selectFilmWithSort",hashMap);
		session.close();
		return list;
	}
	public static void main(String[] args) {
		FilmDAOImpl dao = new FilmDAOImpl();
		
//		System.out.println(dao.getAllFilms());
//		System.out.println(dao.getFilmsByCondition());
		Map hashMap = new HashMap();
		hashMap.put("playCount", 1);
		System.out.println(dao.getFilmsWithSort(hashMap));
	}

}
