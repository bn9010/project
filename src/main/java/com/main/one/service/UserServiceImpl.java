package com.main.one.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.main.one.dao.UserDao;
import com.main.one.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	private final UserDao userDAO;
	
	
	@Inject
	public UserServiceImpl(UserDao userDAO) {
		this.userDAO = userDAO;
	}
	//회원가입처리
	@Override
	public void register(UserVO userVO) throws Exception{
		userDAO.register(userVO);
	}
	//로그인처리
	@Override
	public UserVO login(UserVO userVo) throws Exception {
		return userDAO.login(userVo);
	}
}
