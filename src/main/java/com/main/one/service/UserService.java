package com.main.one.service;

import org.springframework.stereotype.Service;

import com.main.one.domain.UserVO;
@Service
public interface UserService {

	// 회원 가입 처리
	void register(UserVO userVO) throws Exception;



	UserVO login(UserVO userVo) throws Exception;
	}
	
