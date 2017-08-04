package com.maoyan.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import com.maoyan.service.impl.FilmServiceImpl;
import com.maoyan.service.inter.IFilmService;

public class IndexServlet extends HttpServlet{
	private IFilmService filmService = new FilmServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		long st = System.currentTimeMillis();
		Map hotMap = filmService.showHotFilms();
		Map soonMap = filmService.showSoonFilms();
		Map playMap = filmService.showPlayFilms();
		Map boxOfficeMap = filmService.showFilmsOrderByBoxOffice();
		Map wantWatchMap = filmService.showFilmsOrderByWantWatch();
		Map userGradeMap = filmService.showFilmsOrderByUserGrade();
		Map all = new HashMap();
		all.put("hot", hotMap);
		all.put("soon", soonMap);
		all.put("playing", playMap);
		all.put("orderByBoxOffice", boxOfficeMap);
		all.put("orderByWantWatch", wantWatchMap);
		all.put("orderByUserGrade", userGradeMap);
		
		
//		long ed = System.currentTimeMillis();
//		System.out.println(ed - st);
//		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		
		ObjectMapper mapper = new ObjectMapper();
		String allStr = mapper.writeValueAsString(all);
		System.out.println(allStr);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().print(allStr);
		resp.getWriter().close();
	}
}
