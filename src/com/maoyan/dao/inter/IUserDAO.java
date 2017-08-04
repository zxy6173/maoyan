package com.maoyan.dao.inter;

import com.maoyan.bean.UserBean;

public interface IUserDAO {
	public UserBean findByPhoneAndPwd(UserBean bean);

	public UserBean findByPhone(UserBean bean);

	public void insertUser(UserBean bean);
}
