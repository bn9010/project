package com.main.one.domain;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;





@Data
@NoArgsConstructor  //Def
@AllArgsConstructor
public class UserVO {	
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private Date userJoinDate;
	private Date userLoginDate;
	private String userSignature;
	private String uesrImg;
	private int userPoint;
}