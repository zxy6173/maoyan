package com.maoyan.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import com.maoyan.bean.UserBean;
import com.maoyan.service.impl.UserServiceImpl;
import com.maoyan.service.inter.IUserService;

/**
 * Servlet implementation class ValidatePhoneServlet
 */
@WebServlet("/validatePhone")
public class ValidatePhoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidatePhoneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String phone = request.getParameter("phone");
		UserBean bean = new UserBean();
		bean.setPhone(phone);
		IUserService service = new UserServiceImpl();
		bean = service.findUserByPhone(bean);
		ObjectMapper mapper = new ObjectMapper();
		String str = mapper.writeValueAsString(bean);
		response.getWriter().write(str.equals("null") ? "{}" : str);
		response.getWriter().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
