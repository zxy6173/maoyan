package com.maoyan.dao.impl;

import org.apache.ibatis.session.SqlSession;

import com.maoyan.bean.UserBean;
import com.maoyan.dao.BaseDAO;
import com.maoyan.dao.inter.IUserDAO;

public class UserDAOImpl extends BaseDAO implements IUserDAO{

	@Override
	public UserBean findByPhoneAndPwd(UserBean bean) {
		// TODO Auto-generated method stub
		SqlSession session = this.getSession();
		bean =  session.selectOne("selectUserByPhoneAndPwd", bean);
		session.close();
		return bean;
	}
	@Override
	public UserBean findByPhone(UserBean bean) {
		// TODO Auto-generated method stub
		
		SqlSession session = this.getSession();
		bean =  session.selectOne("selectUserByPhone", bean);
		session.close();
		return bean;
	}
	@Override
	public void insertUser(UserBean bean){
		SqlSession session = this.getSession();
		session.insert("insertUser",bean);
		session.commit();
		session.close();
		
	}
	public static void main(String[] args) {
		UserBean bean = new UserBean();
		bean.setPhone("18988888888");
		bean.setPwd("111111");
		IUserDAO dao = new UserDAOImpl();
		System.out.println(dao.findByPhoneAndPwd(bean));
	}

}
