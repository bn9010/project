package com.main.one;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.one.dao.IDao;
import com.main.one.vopage.SearchVo;

@Controller
public class SearchController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/search")
	public String search(HttpServletRequest request, Model model, SearchVo searchVo) {
		
		String searchKeyword=request.getParameter("sk");
		if(searchKeyword==null) {
			searchKeyword="";
		}
		
		model.addAttribute("sk", searchKeyword);
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		String strPage=request.getParameter("page");
		if (strPage==null) {
			strPage="1";
		}
			
		String sk=searchKeyword;
			
		//카테고리
		String c=request.getParameter("c");
		if (c==null) {
			c="";
		}
		model.addAttribute("c", c);
		
		int page=Integer.parseInt(strPage);
		searchVo.setPage(page);
		int total=dao.search_recipe_count(c, sk);
		searchVo.pageCalculate(total);
			
		searchVo.setPage(page);
			
		int rowStart=searchVo.getRowStart();
		int rowEnd=searchVo.getRowEnd();
			
		//정렬
		String order=request.getParameter("order");
		if (order==null) {
			order="date";
		}
		model.addAttribute("order", order);
			
			
		//레시피 리스트1-최신순 정렬
		if (order.equals("date")) {
		model.addAttribute("rlist", dao.recipe_list(rowStart, rowEnd, c, sk));
		model.addAttribute("searchVo", searchVo);
		}
		//레시피 리스트2-조회수순 정렬
		if (order.equals("hit")) {
			model.addAttribute("rlist", dao.recipe_list2(rowStart, rowEnd, c, sk));
			model.addAttribute("searchVo", searchVo);
		}
			
		//총 레시피 개수
		model.addAttribute("cnt", total);
		dao.recipe_list(rowStart, rowEnd, c, sk);
		
		return "/recipe/recipe_search_list";
	}
}
