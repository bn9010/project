package com.main.one.service;

import javax.servlet.http.HttpSession;

import com.main.one.dto.AdminDto;

public interface AdminService {

	boolean loginCheck(AdminDto dto, HttpSession session) throws Exception;
}
