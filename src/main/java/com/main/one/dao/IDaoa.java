package com.main.one.dao;

import java.util.ArrayList;

import com.main.one.dto.MainnoticeDto;

public interface IDaoa {

	public ArrayList<MainnoticeDto> anotice(String c);
	
	
	public MainnoticeDto admin_view(String anum);
	
	public MainnoticeDto main_view(String anum);
	
	public void aupHit(String anum);
	
	
	public void adminlogin(String aid,String apass);
	
	public void awrite(String acategory,String atitle,String acontent);
	public void adelete(String anum);
	
	public void amodify(String anum,String atitle,String acontent,String acategory);
	
	//공지사항 댓글처리
		public ArrayList<MainnoticeDto> mreply_list(String anum);
		
		public void mreply_write(String anum,String mrcontent);
		
		public void mreply_delete(String mrnum);

}
