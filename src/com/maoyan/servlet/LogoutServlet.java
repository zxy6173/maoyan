package com.maoyan.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.UserBean;
import com.maoyan.service.impl.UserServiceImpl;
import com.maoyan.service.inter.IUserService;

public class LogoutServlet extends HttpServlet{
	private IUserService userService = new UserServiceImpl();
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
		HttpSession session = req.getSession();
		session.setAttribute("user", null);
		resp.sendRedirect("/maoyan/index");
		
		
	}
}
