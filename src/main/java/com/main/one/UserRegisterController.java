package com.main.one;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.main.one.domain.UserVO;
import com.main.one.service.UserService;
import com.tech.mainPrj.service.sha256;


@Controller
@RequestMapping("/user")
public class UserRegisterController {
	

	private final UserService userService;

	@Inject
	public UserRegisterController(UserService userService) {
		this.userService = userService;
	}
	//회원가입 페이지
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET() throws Exception {
		return "user/register";
	}
	//회원가입 처리
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes,HttpServletRequest request) throws Exception {
		
//		String hashedPw =BCrypt.hashpw(userVO.getUserPw(), BCrypt.gensalt());
	String hashedPw=request.getParameter("userPw");
		String userPw=sha256.encrypt(hashedPw);
		userVO.setUserPw(userPw);
		userService.register(userVO);
		redirectAttributes.addFlashAttribute("msg", "REGISTERED");
		
		return "redirect:/";
	}
}
