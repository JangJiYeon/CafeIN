package kr.cafein.admin.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

@Controller
public class AdminLoginController {

private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	//커맨드 객체(자바빈) 초기화
	@ModelAttribute("command")
	private MemberCommand initCommand() {
		return new MemberCommand();
	}
	
	@RequestMapping(value="/admin/adminLogin.do",method=RequestMethod.GET)
	public String form() {
		return "admin_login";
	}
	
	@RequestMapping(value="/admin/adminLogin.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command") @Valid MemberCommand memberCommand, BindingResult result, HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + memberCommand);
		}
		
		//id와 passwd 필드만 체크
		if(result.hasFieldErrors("u_email") || result.hasFieldErrors("u_password")) {
			
			return form();
		}
		
	
		
		String uid = memberService.selectUid(memberCommand.getU_email());
		log.debug("가져온 uid 값 : " + uid);
		
		if(uid == null || uid.isEmpty()){
			result.rejectValue("u_email", "NonexistentId"); 
			
			return form();
		}
		
		//로그인 체크 (id 또는 비밀번호 일치 여부 체크)
		try {
			
			MemberCommand member = memberService.selectMember(uid);
		
			
			boolean check = false;
			
			if(member != null) {
				
				//비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(memberCommand.getU_password());
			
			}
			
			if(check) {
				
				if(member.getU_level()!=2){ // 관리자 레벨(2)이 아니면 로그인 실패 
					result.rejectValue("u_password", "invalidId");
					
					return form();
				}
				
				
				//인증성공, 로그인 처리
				session.setAttribute("u_uid", member.getU_uid());
				session.setAttribute("u_level", member.getU_level());
				log.debug("인증성공 ");
				return "redirect:/admin/main.do";
			}else {
				//인증실패
				log.debug("인증실패");
				throw new Exception();
			}
			
		} catch(Exception e) {
			//인증 실패로 폼 호출
			result.rejectValue("u_password", "invalidPassword");
			
			return form();
		}
		
	}
	
}
