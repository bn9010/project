package com.main.one.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.main.one.dao.AdminDao;
import com.main.one.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	AdminDao admindao;
	
	@Override
	public boolean loginCheck(AdminDto dto, HttpSession session) throws Exception {

		boolean result=admindao.loginCheck(dto);
		
		if (result) {
			session.setAttribute("aid", dto.getAid());
			session.setAttribute("apass", dto.getApass());
			
		}

		return result;
	}

	
}
