package com.main.one.dao;


import com.main.one.domain.UserVO;

public interface UserDao {
	//회원가입 처리
	void register(UserVO userVO) throws Exception;
	


	UserVO login(UserVO userVo) throws Exception;
}
