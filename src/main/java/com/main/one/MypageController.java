package com.main.one;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	@RequestMapping("/mypage")
	public String mypage(){
		
		return "mypage/mypage_recipe";
	}
@RequestMapping("/mypagequ")
public String mypagequ() {
	
	return "mypage/mypage_question";
	
}
@RequestMapping("/mypagequ2")
public String mypagequ2() {
	
	return "mypage/mypage_question2";
	
}

@RequestMapping("/mypagemodify")
public String mypagemodify() {

	return "mypage/mypage_modify";
}

@RequestMapping("/mypagenotice")
public String mypagenotice() {
	
	return "mypage/mypage_notice";
}
@RequestMapping("/mypagelnquire")
public String mypagelnquire() {
	
	return "mypage/mypage_lnquire";
}
@RequestMapping("/mypagereport")
public String mypagereport() {
	
	return "mypage/mypage_report";
}
}
