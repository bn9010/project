package com.main.one;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.main.one.dao.IDao;
import com.main.one.dao.IDaon;
import com.main.one.dto.AdminDto;
import com.main.one.service.AdminService;

@Controller
public class AdminloginController {
	
	@Inject    //서비스를 호출하기 위해서 의존성을 주입
    AdminService adminservice;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/adminlogin")
	public String adminlogin() {
		
		
		return "admin/adminlogin/adminlogin";
	}
	@RequestMapping("/alogin")
	public ModelAndView alogin(String aid,String apass,HttpSession session,Model model)throws Exception {
	AdminDto dto=new AdminDto();
		
		IDao dao=sqlSession.getMapper(IDao.class);
		IDaon daon=sqlSession.getMapper(IDaon.class);
	
		
		
		int total=dao.recipe_count();
		int total2=daon.notice_count();
	
		model.addAttribute("cnt",total);
		model.addAttribute("cnt2",total2);
		
		dto.setAid(aid);
		dto.setApass(apass);
	
	
		boolean result = adminservice.loginCheck(dto, session);
	    ModelAndView mav = new ModelAndView();
	    
	    if (result) {
			mav.setViewName("admin/admin");
			mav.addObject("aid", session.getAttribute(aid));
		}else if(session.getAttribute(aid)==null){
			mav.setViewName("admin/adminlogin/adminlogin");
		}
		
		return mav;
	};
}
