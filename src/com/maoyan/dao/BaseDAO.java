package com.maoyan.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;



public class BaseDAO {
	static{
		try {
			//获取基本配置文件的字符流
			Reader reader = Resources.getResourceAsReader("SqlConfig.xml");
			//构建SqlSessionFactory
			factory = new SqlSessionFactoryBuilder().build(reader);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static SqlSessionFactory factory;
	public SqlSession getSession(){
		return factory.openSession();
	}
}
