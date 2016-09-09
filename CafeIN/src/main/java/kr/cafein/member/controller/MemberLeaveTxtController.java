package kr.cafein.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

@Controller
public class MemberLeaveTxtController {
private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	@RequestMapping(value="/cafein_user/mypage/mypage_user_leave.do",method=RequestMethod.GET)
	public String form(){
		
		return "mypage_user_leave";
	}
	@RequestMapping(value="/cafein_user/mypage/mypage_user_leave.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")
						 @Valid MemberCommand memberCommand,
						 BindingResult result,
						 SessionStatus status,
						 HttpSession session){
		
	
			return "mypage_user_leave_check";
		
		
	
	}
	
}
