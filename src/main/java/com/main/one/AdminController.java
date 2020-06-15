package com.main.one;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.one.dao.IDao;
import com.main.one.dao.IDaoa;
import com.main.one.dao.IDaon;
import com.main.one.dto.AdminDto;
import com.main.one.dto.MainnoticeDto;
import com.main.one.vopage.SearchVo;

@Controller
public class AdminController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	@RequestMapping("/admin")
	public String Admin(HttpServletRequest request,Model model) {
		IDao dao=sqlSession.getMapper(IDao.class);
		IDaon daon=sqlSession.getMapper(IDaon.class);
	
		
		
		int total=dao.recipe_count();
		int total2=daon.notice_count();
	
		model.addAttribute("cnt",total);
		model.addAttribute("cnt2",total2);
		return "admin/admin";
	}
	@RequestMapping("/adminview")
	public String AdminNoticeView(HttpServletRequest request,Model model,SearchVo searchVo) {
		System.out.println("admin");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		String c=request.getParameter("c");
		
		model.addAttribute("alist", dao.anotice(c));

		return "admin/admin_notice_view";
	}
	
	
	@RequestMapping("/adminwrite")
	public String awrite(HttpServletRequest request,Model model) {
		
		String acategory=request.getParameter("acategory");
		String atitle=request.getParameter("atitle");
		String acontent=request.getParameter("acontent");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		dao.awrite(acategory, atitle, acontent);
		return "redirect:adminview";
	}
	
	@RequestMapping("/adminnotice")
	public String AdminNotice() {
		
		return "admin/adminnotice";
	}
	@RequestMapping("/anotice")
	public String Anotice() {
		return "";
	}
	@RequestMapping("/adminmodify")
	public String AdminModify(HttpServletRequest request,Model model) {
		String anum=request.getParameter("anum");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		
		MainnoticeDto dto=dao.admin_view(anum);
		model.addAttribute("aview",dto);
		return "admin/adminmodify";
	}
	@RequestMapping("/amodify")
	public String amodify(HttpServletRequest request,Model model,MainnoticeDto dto) {
		//mainnotice
		String anum=request.getParameter("anum");
		String acategory=request.getParameter("acategory");
		String atitle=request.getParameter("atitle");
		String acontent=request.getParameter("acontent");
		
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		dao.amodify(anum,acategory,atitle,acontent);
		
		
		
		return"redirect:admin_view?anum="+anum;
	}
	
	@RequestMapping("admin_view")
	public String admin_view(HttpServletRequest request,Model model) {
		String anum=request.getParameter("anum");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		MainnoticeDto dto=dao.admin_view(anum);
		model.addAttribute("aview",dto);
		
		
		return "admin/admin_view";
	}
	
	@RequestMapping("adelete")
	public String adelete(HttpServletRequest request,Model model) {
		String anum=request.getParameter("anum");
		IDaoa dao=sqlSession.getMapper(IDaoa.class);
		dao.adelete(anum);
		return"redirect:adminview";
	}
}
