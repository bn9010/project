package com.main.one;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.one.dao.IDaoa;
import com.main.one.dto.MainnoticeDto;

@Controller
public class MainnoticeController {
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("mainnotice")
	public String mainnotice(HttpServletRequest request,Model model) {
		System.out.println("mainnotice");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		String c=request.getParameter("c");
		
		model.addAttribute("alist", dao.anotice(c));
		return "mainnotice/mainnotice";
	}
	
	@RequestMapping("mainview")
	public String mainview(HttpServletRequest request,Model model) {
		String anum=request.getParameter("anum");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		dao.aupHit(anum);
		MainnoticeDto dto=dao.main_view(anum);
		model.addAttribute("aview",dto);
		
		//댓글 리스트
		ArrayList<MainnoticeDto> mrpl=dao.mreply_list(anum);
		model.addAttribute("mreply1",mrpl);
		
	return "mainnotice/mainnoticeview";	
	}

	//공지사항 댓글
		@RequestMapping("/mreply")
		public String mreply(HttpServletRequest request,Model model) {
			String anum=request.getParameter("anum");
			String mrcontent=request.getParameter("mrcontent");
			IDaoa dao=sqlSession.getMapper(IDaoa.class);
			
			dao.mreply_write(anum, mrcontent);
			
			
			return "redirect:mainview?anum="+anum;
		}
		@RequestMapping("mreply_delete")
		public String mreply_delete(HttpServletRequest request) {
			String mrnum=request.getParameter("mrnum");
			String anum=request.getParameter("anum");
			
			IDaoa dao=sqlSession.getMapper(IDaoa.class);
			
			dao.mreply_delete(mrnum);
			
			
			return "redirect:mainview?anum="+anum;
		}
		
	
}
