package com.main.one;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.one.vopage.SearchVo;
import com.main.one.dao.IDaon;
import com.main.one.dto.NoticeDto;


@Controller
public class NoticeController {
	
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping("/notice")
	public String notice(HttpServletRequest request,SearchVo searchVo,Model model) {
		System.out.println("notice");
		
		String ntitle="";
		String ncontent="";
		
		String[] nrdtitle=
				request.getParameterValues("searchType");
		if (nrdtitle!=null) {
			for (String val : nrdtitle) {
				if (val.equals("ntitle")) {
					model.addAttribute("ntitle","true");
					ntitle="ntitle";
				}else if (val.equals("ncontent")) {
					model.addAttribute("ncontent","true");
					ncontent="ncontent";
				}
			}
		}
		
		String searchKeyword=request.getParameter("sk");
		if (searchKeyword==null) {
			searchKeyword="";
		}
		IDaon daon=sqlsession.getMapper(IDaon.class);
		int total=0;
		if (ntitle.equals("ntitle") && ncontent.equals("")) {
			total=daon.selectBoardCount(searchKeyword ,"1");
			System.out.println("go total > notice1");
		}
		else 	if (ntitle.equals("") && ncontent.equals("ncontent")) {
			total=daon.selectBoardCount(searchKeyword ,"2");
			System.out.println("go total > notice2");
		}
		
		else	if (ntitle.equals("ntitle") && ncontent.equals("ncontent")) {
			total=daon.selectBoardCount(searchKeyword ,"3");
			System.out.println("go total > notice3");
		}
		else	if (ntitle.equals("") && ncontent.equals("")) {
			total=daon.selectBoardCount(searchKeyword ,"0");
			System.out.println("go total > notice0");
		}
		
		String strPage=request.getParameter("page");
		
		searchVo.pageCalculate(total);
		System.out.println("searchKeyword >>"+searchKeyword);
		model.addAttribute("searchKeyword",searchKeyword);

		System.out.println("strPage >>"+strPage);

		if(strPage==null || strPage.equals("")) {
			strPage="1";
		}
		System.out.println("strPage >>"+strPage);

		int page=Integer.parseInt(strPage);
		searchVo.setPage(page);
		
		searchVo.pageCalculate(total);
		
		System.out.println("레코드 총수 "+ daon.selectBoardCount(searchKeyword, "0" ));
		
		System.out.println("====================");
		System.out.println("clickPage : "+searchVo.getPage());
		System.out.println("pageStart : "+searchVo.getPageStart());
		System.out.println("pageEnd : "+searchVo.getPageEnd());
		System.out.println("pageTot : "+searchVo.getTotPage());
		System.out.println("rowStart : "+searchVo.getRowStart());
		System.out.println("rowEnd : "+searchVo.getRowEnd());
				
		int rowstart=searchVo.getRowStart();
		int rowend=searchVo.getRowEnd();
		
		System.out.println("ntitle>>"+ntitle);
		System.out.println("ncontent>>"+ncontent);
		
		if (ntitle.equals("ntitle") && ncontent.equals("")) {
			model.addAttribute("notice", daon.nnotice(rowstart, rowend,searchKeyword,"1"));
			model.addAttribute("totRowCnt", daon.selectBoardCount(searchKeyword, "1"));
			System.out.println("gogo >notice1");
		}
		else if (ntitle.equals("") && ncontent.equals("ncontent")) {
			model.addAttribute("notice", daon.nnotice(rowstart, rowend,searchKeyword,"2"));
			model.addAttribute("totRowCnt", daon.selectBoardCount(searchKeyword, "2"));
			System.out.println("gogo >notice2");
		}
		else if (ntitle.equals("ntitle") && ncontent.equals("ncontent")) {
			model.addAttribute("notice", daon.nnotice(rowstart, rowend,searchKeyword,"3"));
			model.addAttribute("totRowCnt", daon.selectBoardCount(searchKeyword, "3"));
			System.out.println("gogo >notice3");
		}
		
		else if (ntitle.equals("") && ncontent.equals("")) {
			model.addAttribute("notice", daon.nnotice(rowstart, rowend,searchKeyword,"0"));
			model.addAttribute("totRowCnt", daon.selectBoardCount(searchKeyword, "0"));
			System.out.println("gogo >notice0");
		}
		
	
		model.addAttribute("searchVo",searchVo);
		
		return "notice/notice";
	}
	
	@RequestMapping("/noticeinsert")
	public String write_view() {
	System.out.println("");
		
	return "notice/notice_insert";
	}
	
	@RequestMapping("/notice_modify")
	public String notice_modify(HttpServletRequest request,Model model) {
		String nid=request.getParameter("nid");
		IDaon dao=sqlsession.getMapper(IDaon.class);
		
		NoticeDto dto=dao.notice_mod(nid);
		model.addAttribute("nview",dto);
		
		
		return "notice/notice_modify";
	}
	@RequestMapping("/nmodify")
	public String nmodify(HttpServletRequest request,Model model,NoticeDto dto) {
//		notice
		String nid=request.getParameter("nid");
		String ntitle=request.getParameter("ntitle");
		String ncontent=request.getParameter("ncontent");
		IDaon dao=sqlsession.getMapper(IDaon.class);
		dao.nmodify(nid,ntitle, ncontent);
		return "redirect:notice";
		
		
	}
	@RequestMapping("/notice_view")
	public String notice_view(HttpServletRequest request,Model model) {
		String nid=request.getParameter("nid");
		IDaon dao=sqlsession.getMapper(IDaon.class);
		NoticeDto dto=dao.notice_view(nid);
		model.addAttribute("nview",dto);
		//댓글 리스트
				ArrayList<NoticeDto> nrpl=dao.nreply_list(nid);
				model.addAttribute("nreply1", nrpl);
	return "notice/notice_view";
	}
	@RequestMapping("/write")
	public String write (HttpServletRequest request, Model model) {
		System.out.println("write");
		
		String nname=request.getParameter("nname");
		String ntitle=request.getParameter("ntitle");
		String ncontent=request.getParameter("ncontent");
		
		IDaon daon=sqlsession.getMapper(IDaon.class);
		daon.nwrite(nname, ntitle, ncontent);
		

		
		return "redirect:notice";
	}
	//게시판 삭제
		@RequestMapping("/ndelete")
		public String notice_delete(HttpServletRequest request) {
		String nid=request.getParameter("nid");
		IDaon dao=sqlsession.getMapper(IDaon.class);
		dao.notice_delete(nid);
		
		return"redirect:notice";
		}
		//notice 댓글
		@RequestMapping("/nreply")
		public String nreply(HttpServletRequest request,Model model) {
			
			String nid=request.getParameter("nid");
			String rpcontent=request.getParameter("rpcontent");
			IDaon dao=sqlsession.getMapper(IDaon.class);
			
			dao.nreply_write(nid,rpcontent);
			
			
			return"redirect:notice_view?nid="+nid;
		}
		
		@RequestMapping("/nreply_delete")
		public String nreply_delete(HttpServletRequest request) {
			String rpnum=request.getParameter("rpnum");
			String nid=request.getParameter("nid");
			
			IDaon dao=sqlsession.getMapper(IDaon.class);
			
			dao.nreply_delete(rpnum);
			
			
			return"redirect:notice_view?nid="+nid;
		}

		
	}