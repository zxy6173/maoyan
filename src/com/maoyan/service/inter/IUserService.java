package com.maoyan.service.inter;

import com.maoyan.bean.UserBean;

public interface IUserService {
	public UserBean findUserByPhoneAndPwd(UserBean bean);

	public UserBean findUserByPhone(UserBean bean);

	public void insertUser(UserBean bean);
}
