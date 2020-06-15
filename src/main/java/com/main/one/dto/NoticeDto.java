package com.main.one.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeDto {

	
	private int	nid;
	private String	nname;
	private String	ntitle;
	private String	ncontent;
	private Date	ndate;
	private int	nhit;
	private int	ngroup;
	private int	nstep;
	private int	nindent;	
	
	private int rpnum;
	private String rpid;
	private String rpcontent;
	private Date rpdate;
	private int rpgroup;
	private int rpstep;
	private int rpindent;
	
	
	public NoticeDto() {
		// TODO Auto-generated constructor stub
	}

}
