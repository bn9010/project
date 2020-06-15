package com.main.one.dao;

import java.util.ArrayList;

import com.main.one.dto.BoardDto;

public interface IDao {
	//메인
	public ArrayList<BoardDto> main_list(int start, int end);
	
	public ArrayList<BoardDto> main_list2(int start, int end);
	
	//레시피
	public ArrayList<BoardDto> recipe_list(int start, int end, String c, String st);
	
	public ArrayList<BoardDto> recipe_list2(int start, int end, String c, String st);
		
	public BoardDto recipe_view(String rnum);
	
	public BoardDto recipe_view2(String rhit);
	
	public void recipe_write( String rtitle, String rcategory,String rserves,String rtime, 
			String rlevel, String rinformation, String ringredients,String rtip,String rfilesrc,
			String step1, String step2, String step3, String step4, String step5, String step6, 
			String cfilesrc1, String cfilesrc2, String cfilesrc3, String cfilesrc4, String rid, String rname);
	
	public void filewrite(BoardDto dto);

	public void filewrite(String fName);

	public void recipe_delete(String rnum);

	public void recipe_modify(String rtitle, String rcategory, String rserves, String rtime, 
			String rlevel, String rinformation, String ringredients, String rtip, String rfilesrc,
			String step1, String step2, String step3, String step4, String step5, String step6, 
			String cfilesrc1, String cfilesrc2, String cfilesrc3, String cfilesrc4, String rnum);

	public void upRhit(String rnum);
	
	public ArrayList<BoardDto> reply_list1(String rnum);
	
	public ArrayList<BoardDto> reply_list2(int total, String rnum);

	public void reply_write(String rid, String rname, String pcontent, String rnum);

	public void reply_delete(String pnum);
	
	public void all_reply_delete(String rnum);
	
	public BoardDto reply_reply_view(String pnum);

	public void reply_modify(String pcontent, String pnum);

	public void reply_reply(String pcontent, String pgroup, String pstep, 
			String pindent, String rnum, String rid, String rname);

	public void stepup(String pgroup, String pstep);

	public int reply_count(String rnum);

	public int recipe_count();
	
	public int search_recipe_count(String c, String sk);
	//레시피 
	
	
	//셰프
	public ArrayList<BoardDto> chef_list();
	
	public void upRcnt(String rid);

	public void downRcnt(String rid);

	public int chef_count();
	//셰프
	
	
	//마이페이지
	public int myrecipe_count(String rid);

	public ArrayList<BoardDto> mypage_recipe(int rowStart, int rowEnd, String rid);
	//마이페이지

}
