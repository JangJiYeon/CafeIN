package kr.cafein.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberLogoutController {

	@RequestMapping("/cafein_user/user/logout.do")
	public String process(HttpSession session) {
		
		//·Î±×¾Æ¿ô
		session.invalidate();
		
		return "redirect:/cafein_user/main/main.do";
	}
}
