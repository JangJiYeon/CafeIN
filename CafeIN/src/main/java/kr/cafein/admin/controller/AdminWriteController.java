package kr.cafein.admin.controller;

import java.util.HashMap;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

@Controller
public class AdminWriteController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource
	private MemberService memberService;

	@RequestMapping(value = "/admin/adminRegister.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> process(@ModelAttribute @Valid MemberCommand memberCommand, BindingResult result) throws Exception {
		
		if (log.isDebugEnabled()) {
			log.debug("AdminWriteController가 받은 값 memberCommand : " + memberCommand);
		}

		Map<String, String> map = new HashMap<String, String>();

		try {
			
			
			memberCommand.setU_level(2);
			
			log.debug("회원등록 문제없음! 등록시작 ");
			log.debug("memberCommand level 확인~~~~~~ : " + memberCommand);
			//회원 가입
			memberService.insert(memberCommand);

			map.put("result", "success");

		} catch (Exception e) {
			log.error(e);
			map.put("result", "failure");
		}

		return map;
	}
}
