package com.main.one.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.one.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean loginCheck(AdminDto dto) throws Exception {
		String name=sqlSession.selectOne("admin.login_check", dto);
		
		
		return (name==null) ? false : true;
	}
	
}
