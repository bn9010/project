package com.main.one.dao;

import com.main.one.dto.AdminDto;

public interface AdminDao {

	boolean loginCheck(AdminDto dto)throws Exception;
}
