package com.maoyan.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import com.maoyan.bean.UserBean;
import com.maoyan.service.impl.UserServiceImpl;
import com.maoyan.service.inter.IUserService;

public class LoginServlet extends HttpServlet{
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
		UserBean bean = new UserBean();
		bean.setPhone(req.getParameter("phone"));
		bean.setPwd(req.getParameter("pwd"));
		bean = userService.findUserByPhoneAndPwd(bean);
		ObjectMapper mapper = new ObjectMapper();
		String str = mapper.writeValueAsString(bean);
		resp.getWriter().write(str.equals("null") ? "{}" : str);
		resp.getWriter().close();
//		if(bean != null){
////			HttpSession session = req.getSession();
////			session.setAttribute("user", bean);
////			resp.sendRedirect("/maoyan/index");
////			req.getRequestDispatcher("/index.jsp").forward(req, resp);
//			mapper.writeValueAsString(bean);
//		}else{
////			req.setAttribute("error", "1");
////			req.getRequestDispatcher("/login.jsp").forward(req, resp);
//			mapper.writeValueAsString(bean);
//		}
		
	}
}
