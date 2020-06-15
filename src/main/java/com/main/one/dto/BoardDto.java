package com.main.one.dto;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDto {
	private int rnum;
	private String rid;
	private String rname;
	private String rtitle;
	private String rcategory;
	private String rserves;
	private String rtime;
	private String rlevel;
	private String rinformation;
	private String ringredients;
	private String rtip;
	private String rfilesrc;
	private Timestamp rdate;
	private int rhit;
	
	private String step1;
	private String step2;
	private String step3;
	private String step4;
	private String step5;
	private String step6;
	
	private String cfilesrc1;
	private String cfilesrc2;
	private String cfilesrc3;
	private String cfilesrc4;
	
	private MultipartFile uploadFile;
	private MultipartFile uploadFile1;
	private MultipartFile uploadFile2;
	private MultipartFile uploadFile3;
	private MultipartFile uploadFile4;
	
	private int pnum;
	private String pid;
	private String pname;
	private String pcontent;
	private Timestamp pdate;
	private int pgroup;
	private int pstep;
	private int pindent;
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private int user_point;
	private String session_key;
	private Timestamp session_limit;
	private String user_img;
	private Timestamp user_join_date;
	private Timestamp user_login_date;
	private String user_signature;
	private int rcnt;
	
	
	
}
