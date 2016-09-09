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

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

@Controller
public class MemberModifyCheckPasswordController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource
	private MemberService memberService;

	//커맨드 객체(자바빈) 초기화
	@ModelAttribute("command")
	private MemberCommand initCommand() {
		return new MemberCommand();
	}


	@RequestMapping(value = "/cafein_user/mypage/mypage_user_modify_check.do", method = RequestMethod.GET)
	public String form() {
		// 타일스 설정
		return "mypage_user_modify_check";
	}

	@RequestMapping(value = "/cafein_user/mypage/mypage_user_modify_check.do", method = RequestMethod.POST)
	public String submit(@ModelAttribute("command") @Valid MemberCommand memberCommand, BindingResult result,
			HttpSession session) throws Exception {

		if (log.isDebugEnabled()) {
			log.debug("memberCommand : " + memberCommand);
		}

		if (result.hasFieldErrors("confirmpassword")) {
			log.debug("회원정보 비번체크 실패! 리턴 ");
			return form();

		}

		String id = (String)session.getAttribute("u_uid");
		log.debug("check에서 가져온 uid : " + id);
		
		
		try {
			

			MemberCommand member = memberService.selectMember(memberCommand.getU_uid());

			if (!memberCommand.getConfirmpassword().equals(member.getU_password())) {
				log.debug("비번 불일치!");
				result.rejectValue("confirmpassword", "messageCode", "비밀번호가 일치하지 않습니다.");
				return form();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/cafein_user/mypage/mypage_user_modify.do";
	}

}
