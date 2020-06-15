package com.main.one.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.one.domain.UserVO;

	@Repository
	public class UserDaoImpl implements UserDao {

	private static final String NAMESPACE="com.main.one.mapper.UserMapper";
	
	private final SqlSession sqlSession;
	
	@Inject
	public UserDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//회원가입처리
	@Override
	public void register(UserVO userVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".register", userVO);
	}
	//로그인처리
	@Override
	public UserVO login(UserVO userVo) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".login", userVo); 
	}
}

