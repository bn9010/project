package com.main.one.dao;

import java.util.ArrayList;

import com.main.one.dto.NoticeDto;



public interface IDaon {
	
	public ArrayList<NoticeDto> nnotice(int start,int end,String searchKeyword,String selNum);
	
	
	public int selectBoardCount(String searchKeyword,String selNum);
	
	public NoticeDto notice_view(String nid);
	public NoticeDto notice_mod(String nid);
	public void nmodify(String nid,String ntitle, String ncontent);
	
	public void nupHit(String strid);
	
	public void nwrite(String nname, String ntitle, String ncontent);
	
	public void notice_delete(String nid);
	//게시판 댓글처리
	public ArrayList<NoticeDto> nreply_list(String nid);
	
	public void nreply_write(String nid,String rpcontent);
	
	public void nreply_delete(String rpnum);
	
	public NoticeDto nreply_modify_view(String rpnum);
	
	public void nreply_modify(String rpcontent,String rpnum);

	public int notice_count();
	
}
