package com.main.one.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminDto {
	   private String aid;    //아이디
	    private String apass;    //비밀번호
		
	    
	    
	    @Override
		public String toString() {
	return "AdminDto [aid=" + aid + ", apass=" + apass + "]";
		}
	    
	    
}
