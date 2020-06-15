package com.main.one;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.one.domain.UserVO;
import com.main.one.service.UserService;
import com.tech.mainPrj.service.sha256;


@Controller
@RequestMapping("/user")
public class UserLoginController {
	
	
	private final UserService userService;

	@Inject
	public UserLoginController(UserService userService) {
		this.userService = userService;
	}
	
	//로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(@ModelAttribute("loginDTO") UserVO userVo) {
			return "user/login";
	}
	
	//로그인 처리
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public String loginPOST(UserVO userVo, HttpSession httpSession, Model model,HttpServletRequest request,String userId) throws Exception {
		
		userVo.setUserId(userId);
		String userPw=request.getParameter("userPw");
		String pw=sha256.encrypt(userPw);
		userVo = userService.login(userVo);
		
		userVo=userService.login(userVo);
			if (userVo == null || pw!=userVo.getUserPw()){
				return "/user/login";
				
			}else {
			
			model.addAttribute("/",userVo);
		
			return "redirect:/";
			}
	}
}
