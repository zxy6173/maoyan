package com.maoyan.service.impl;

import com.maoyan.bean.UserBean;
import com.maoyan.dao.impl.UserDAOImpl;
import com.maoyan.dao.inter.IUserDAO;
import com.maoyan.service.inter.IUserService;

public class UserServiceImpl implements IUserService{
	private IUserDAO dao = new UserDAOImpl();
	@Override
	public UserBean findUserByPhoneAndPwd(UserBean bean) {
		// TODO Auto-generated method stub
		return dao.findByPhoneAndPwd(bean);
	}
	@Override
	public UserBean findUserByPhone(UserBean bean) {
		// TODO Auto-generated method stub
		return dao.findByPhone(bean);
	}
	@Override
	public void insertUser(UserBean bean) {
		// TODO Auto-generated method stub
		bean.setUsername("my_"+(System.currentTimeMillis()+(int)Math.random()*89999+10000));
		dao.insertUser(bean);
	}
}
