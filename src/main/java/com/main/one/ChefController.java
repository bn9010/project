package com.main.one;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.one.dao.IDao;

@Controller
public class ChefController {
	@Autowired
	private SqlSession sqlSession;
	
	//셰프 리스트
	@RequestMapping("/chef")
	public String chef(HttpServletRequest request, Model model) {
		IDao dao=sqlSession.getMapper(IDao.class);
		
		//셰프 리스트
		model.addAttribute("clist", dao.chef_list());
		
		//셰프 수
		int total=dao.chef_count();
		model.addAttribute("cnt",total);
		
		return "/chef";
	} 
	
}
