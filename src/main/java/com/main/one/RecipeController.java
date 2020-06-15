package com.main.one;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.main.one.dao.IDao;
import com.main.one.dto.BoardDto;
import com.main.one.vopage.SearchVo;

@Controller
public class RecipeController {
	@Autowired
	private SqlSession sqlSession;
	
	//레시피 리스트
	@RequestMapping("/recipe")
	public String recipe(HttpServletRequest request, Model model, SearchVo searchVo) {
		IDao dao=sqlSession.getMapper(IDao.class);
		
		String sk=request.getParameter("sk");
		if(sk==null) sk="";
		
		//카테고리
		String c=request.getParameter("c");
		if (c==null) {
			c="";
		}
		
		model.addAttribute("c", c);
		
		//페이지
		String strPage=request.getParameter("page");
		if (strPage==null) {
			strPage="1";
		}
		
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
		
		
		//레시피 리스트1
		if (order.equals("date")) {
			model.addAttribute("rlist", dao.recipe_list(rowStart, rowEnd, c, sk));
			model.addAttribute("searchVo", searchVo);
		}
		
		if (order.equals("hit")) {
			model.addAttribute("rlist", dao.recipe_list2(rowStart, rowEnd, c, sk));
			model.addAttribute("searchVo", searchVo);
			}
		
		//총 레시피 개수
		model.addAttribute("cnt", total);
		
		return "recipe/recipe";
	}
	
	//레시피 상세
	@RequestMapping("recipesee")
	public String recipe_view(HttpServletRequest request, Model model) {
		String rnum=request.getParameter("rnum");
		IDao dao=sqlSession.getMapper(IDao.class);
		
		//총 댓글 개수
		int total=0;
		total=dao.reply_count(rnum);
		model.addAttribute("rcnt", total);
		//조회수 상승
		dao.upRhit(rnum);
		//레시피 상세
		BoardDto dto=dao.recipe_view(rnum);
		model.addAttribute("rview", dto);
		//댓글 리스트1
		ArrayList<BoardDto> rpl1=dao.reply_list1(rnum);
		model.addAttribute("reply1", rpl1);
		//댓글 리스트2
		ArrayList<BoardDto> rpl2=dao.reply_list2(total,rnum);
		model.addAttribute("reply2", rpl2);
 		
		return"recipe/recipe_see";
	}
	
	//레시피 작성 페이지
	@RequestMapping("/recipe_write_view")
	public String recipewrite() {
	
		return "/recipe/recipe_write";
	}
	
	//레시피 작성
	@RequestMapping("/rwrite")
	public String recipe_write(HttpServletRequest request, Model model, BoardDto dto) {
		//대표 사진 업로드
		MultipartFile uploadFile=dto.getUploadFile();
		String fName=uploadFile.getOriginalFilename();
		if (fName.isEmpty()) {
			fName="noimage.png";
		} else {
			fName=System.currentTimeMillis()+uploadFile.getOriginalFilename();
			try {
				uploadFile.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진1
		MultipartFile uploadFile1=dto.getUploadFile1();
		String fName1=uploadFile1.getOriginalFilename();
		if (fName1.isEmpty()) {
			fName1="";
		} else {
			fName1=System.currentTimeMillis()+uploadFile1.getOriginalFilename();
			try {
				uploadFile1.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName1));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진2
		MultipartFile uploadFile2=dto.getUploadFile2();
		String fName2=uploadFile2.getOriginalFilename();
		if (fName2.isEmpty()) {
			fName2="";
		} else {
			fName2=System.currentTimeMillis()+uploadFile2.getOriginalFilename();
			try {
				uploadFile2.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName2));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진3
		MultipartFile uploadFile3=dto.getUploadFile3();
		String fName3=uploadFile3.getOriginalFilename();
		if (fName3.isEmpty()) {
			fName3="";
		} else {
			fName3=System.currentTimeMillis()+uploadFile3.getOriginalFilename();
			try {
				uploadFile3.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName3));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진4
		MultipartFile uploadFile4=dto.getUploadFile4();
		String fName4=uploadFile4.getOriginalFilename();
		if (fName4.isEmpty()) {
			fName4="";
		} else {
			fName4=System.currentTimeMillis()+uploadFile4.getOriginalFilename();
			try {
				uploadFile4.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName4));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//아이디, 닉네임 - 로그인 구현 후 수정
		String rid="abc123";
		String rname="홍길동";
		
		//recipe_board
		String rtitle=request.getParameter("rtitle");
		String rcategory=request.getParameter("rcategory");
		String rfilesrc=fName;
		String rinformation=request.getParameter("rinformation");
		String rserves=request.getParameter("rserves");
		String rtime=request.getParameter("rtime");
		String rlevel=request.getParameter("rlevel");
		String ringredients=request.getParameter("ringredients");
		String rtip=request.getParameter("rtip");
			
		//step
		String step1=request.getParameter("step1");
		String step2=request.getParameter("step2");
		String step3=request.getParameter("step3");
		String step4=request.getParameter("step4");
		String step5=request.getParameter("step5");
		String step6=request.getParameter("step6");
		String cfilesrc1=fName1;
		String cfilesrc2=fName2;
		String cfilesrc3=fName3;
		String cfilesrc4=fName4;
		
		if (step2==null) step2="";
		if (step3==null) step3="";
		if (step4==null) step4="";
		if (step5==null) step5="";
		if (step6==null) step6="";
			
		IDao dao=sqlSession.getMapper(IDao.class);
		
		dao.recipe_write(rtitle, rcategory, rserves, rtime, rlevel, 
				rinformation, ringredients, rtip, rfilesrc,
				step1, step2, step3, step4, step5, step6, 
				cfilesrc1, cfilesrc2, cfilesrc3, cfilesrc4, rid, rname);
		
		//레시피 작성 수 상승
		dao.upRcnt(rid);
			
		return "redirect:recipe";
	}
	
	//레시피삭제
	@RequestMapping("/rdelete")
	public String recipe_delete(HttpServletRequest request) {
		String rnum=request.getParameter("rnum");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		dao.recipe_delete(rnum);
		
		//레시피 댓글 모두 삭제
		dao.all_reply_delete(rnum);
				
		//레시피 작성 수 감소
		String rid="abc123";
		dao.downRcnt(rid);
		
		return "redirect:recipe";
	}
	
	//레시피 수정 페이지
	@RequestMapping("/recipe_modify")
	public String recipe_modify_view(HttpServletRequest request, Model model) {
		String rnum=request.getParameter("rnum");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		BoardDto dto=dao.recipe_view(rnum);
		model.addAttribute("rview", dto);
		
		return "/recipe/recipe_modify_view";
	}
	
	//레시피 수정 
	@RequestMapping("/rmodify")
	public String rmodify(HttpServletRequest request, Model model, BoardDto dto) {
		
		String dimg=request.getParameter("dimg");
		String cimg1=request.getParameter("cimg1");
		String cimg2=request.getParameter("cimg2");
		String cimg3=request.getParameter("cimg3");
		String cimg4=request.getParameter("cimg4");
		
		//대표 사진 업로드
		MultipartFile uploadFile=dto.getUploadFile();
		String fName=uploadFile.getOriginalFilename();
		
		if(fName.isEmpty() && dimg!=null) {
			fName=dimg;
		} else {
			if (fName.isEmpty()) {
				fName="no_image.jpg";
			} else {
				fName=System.currentTimeMillis()+uploadFile.getOriginalFilename();
				try {
					uploadFile.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
							+ "/src/main/webapp/resources/images/rimg/"+fName));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		
		//완성 사진1
		MultipartFile uploadFile1=dto.getUploadFile1();
		String fName1=uploadFile1.getOriginalFilename();
		
		if(fName1.isEmpty() && cimg1!=null) {
			fName1=cimg1;
		} else if (fName1.isEmpty() && cimg1==null) {
			fName1="";
		} else {
			fName1=System.currentTimeMillis()+uploadFile1.getOriginalFilename();
			try {
				uploadFile1.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName1));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진2
		MultipartFile uploadFile2=dto.getUploadFile2();
		String fName2=uploadFile2.getOriginalFilename();
		
		if(fName2.isEmpty() && cimg2!=null) {
			fName2=cimg2;
		} else if (fName2.isEmpty() && cimg2==null) {
			fName2="";
		} else {
			fName2=System.currentTimeMillis()+uploadFile2.getOriginalFilename();
			try {
				uploadFile2.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName2));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진3
		MultipartFile uploadFile3=dto.getUploadFile3();
		String fName3=uploadFile3.getOriginalFilename();
		if(fName3.isEmpty() && cimg3!=null) {
			fName3=cimg3;
		} else if (fName3.isEmpty() && cimg3==null) {
			fName3="";
		} else {
			fName3=System.currentTimeMillis()+uploadFile3.getOriginalFilename();
			try {
				uploadFile3.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName3));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//완성 사진4
		MultipartFile uploadFile4=dto.getUploadFile4();
		String fName4=uploadFile4.getOriginalFilename();
		if(fName4.isEmpty() && cimg4!=null) {
			fName4=cimg4;
		} else if (fName4.isEmpty() && cimg4==null) {
			fName4="";
		} else {
			fName4=System.currentTimeMillis()+uploadFile4.getOriginalFilename();
			try {
				uploadFile4.transferTo(new File("D:/spring_set/spring_work/homepage_6.12"
						+ "/src/main/webapp/resources/images/rimg/"+fName4));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		//recipe_board
		String rnum=request.getParameter("rnum");
		String rtitle=request.getParameter("rtitle");
		String rcategory=request.getParameter("rcategory");
		String rserves=request.getParameter("rserves");
		String rtime=request.getParameter("rtime");
		String rlevel=request.getParameter("rlevel");
		String rinformation=request.getParameter("rinformation");
		String ringredients=request.getParameter("ringredients");
		String rtip=request.getParameter("rtip");
		String rfilesrc=fName;
		
		//step
		String step1=request.getParameter("step1");
		String step2=request.getParameter("step2");
		String step3=request.getParameter("step3");
		String step4=request.getParameter("step4");
		String step5=request.getParameter("step5");
		String step6=request.getParameter("step6");
		String cfilesrc1=fName1;
		String cfilesrc2=fName2;
		String cfilesrc3=fName3;
		String cfilesrc4=fName4;
		
		if (step2==null) step2="";
		if (step3==null) step3="";
		if (step4==null) step4="";
		if (step5==null) step5="";
		if (step6==null) step6="";
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		dao.recipe_modify(rtitle, rcategory, rserves, rtime, rlevel, 
				rinformation, ringredients, rtip, rfilesrc,
				step1, step2, step3, step4, step5, step6, 
				cfilesrc1, cfilesrc2, cfilesrc3, cfilesrc4, rnum);
		
		return "redirect:recipesee?rnum="+rnum;
	}
	
	//댓글 작성
	@RequestMapping("/rReply")
	public String rReply(HttpServletRequest request, Model model) {
		//아이디, 닉네임 - 로그인 구현 후 수정
		String rid="abc123";
		String rname="홍길동";
		String pcontent=request.getParameter("pcontent");
		String rnum=request.getParameter("rnum");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		dao.reply_write(rid, rname, pcontent, rnum);
		
		return "redirect:recipesee?rnum="+rnum;
	}
		
	//댓글 삭제
	@RequestMapping("/rReply_delete")
	public String rReply_delete(HttpServletRequest request) {
		String rnum=request.getParameter("rnum");
		String pnum=request.getParameter("pnum");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		dao.reply_delete(pnum);
		
		return "redirect:recipesee?rnum="+rnum;
	}
	
	//대댓글 작성 페이지
	@RequestMapping("/rReply_reply_view")
	public String rReply_reply_view(HttpServletRequest request, Model model) {
		String pnum=request.getParameter("pnum");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		BoardDto dto=dao.reply_reply_view(pnum);
		model.addAttribute("rp", dto);
		
		return "/recipe/reply_reply_view";
	}
		
	//대댓글 작성
	@RequestMapping("rReply_reply")
	public String rReply_reply(HttpServletRequest request) {
		//아이디, 닉네임 - 로그인 구현 후 수정
		String rid="abc123";
		String rname="홍길동";
		String pgroup=request.getParameter("pgroup");
		String rnum=request.getParameter("rnum");
		String pcontent=request.getParameter("pcontent");
		String pstep=request.getParameter("pstep");
		String pindent=request.getParameter("pindent");
		
		
		IDao dao=sqlSession.getMapper(IDao.class);
		dao.stepup(pgroup, pstep);
		dao.reply_reply(pcontent,pgroup,pstep,pindent,rnum,rid,rname);
			
		return "redirect:recipesee?rnum="+rnum;
		}	
		
}
