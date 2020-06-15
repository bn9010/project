package com.main.one;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.one.dao.IDao;
import com.main.one.vopage.SearchVo;
import com.main.one.vopage.SearchVo2;

@Controller
public class MainController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/")
	public String main(HttpServletRequest request, Model model, SearchVo2 searchVo2) {
		System.out.println("main");
		IDao dao=sqlSession.getMapper(IDao.class);
		String strPage=request.getParameter("page");
		if (strPage==null) {
			strPage="1";
		}
		
		int page=Integer.parseInt(strPage);
		searchVo2.setPage(page);
		int total=dao.recipe_count();
		searchVo2.pageCalculate(total);
		
		searchVo2.setPage(page);
		
		int rowStart=searchVo2.getRowStart();
		int rowEnd=searchVo2.getRowEnd();
		
		//최신 레시피
		model.addAttribute("rlist", dao.main_list(rowStart, rowEnd));
		model.addAttribute("searchVo2", searchVo2);
		
		
		//인기 레시피
		model.addAttribute("rlist2", dao.main_list2(rowStart, rowEnd));
		model.addAttribute("searchVo2", searchVo2);
		
		return "main2";
	}
}
