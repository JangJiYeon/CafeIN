package kr.cafein.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;


@Controller
@SessionAttributes("command")
public class MemberUpdateController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	@RequestMapping(value="/cafein_user/mypage/mypage_user_modify.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model) {
		// Model -  뷰에 전달할 객체 정보를 담고 있는 Model을 리턴한다. 이때 뷰 이름은 요청 URL로부터 결정된다.
		
		String id = (String)session.getAttribute("u_uid");
		
		MemberCommand member = memberService.selectMember(id);
		log.debug("update에서의 member : " + member);
		//모델에 저장된 정보는 @SessionAttribute("command")를 통해 세션에 저장
		//jsp에서 command라고 참조할 수 있음
		model.addAttribute("command",member);
		
		return "mypage_user_modify";
	}
	
	@RequestMapping(value="/cafein_user/mypage/mypage_user_modify.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command") @Valid MemberCommand memberCommand, BindingResult result, SessionStatus status) {
		
		// SessionStatus  - 폼 처리를 완료 했음을 처리하기 위해 사용. @SessionAttribute를 명시한 session 속성을 제거하도록 이벤트를 발생시킨다.
		
		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + memberCommand);
		}
		
		if(result.hasErrors()) {
			return "mypage_user_modify";
		}
		
	if(!memberCommand.isConfirmPasswd()){
			
			log.debug("비번 불일치!");
			result.rejectValue("u_password", "messageCode","비밀번호와 비밀번호 확인이 일치하지 않습니다");
			
			return "mypage_user_modify";
		}
		
		
		//회원정보수정
		memberService.update(memberCommand);
		//session에 저장된 model을 삭제하는 이벤트 발생
		status.setComplete();
		
		return "redirect:/cafein_user/main/main.do";
	}
}
