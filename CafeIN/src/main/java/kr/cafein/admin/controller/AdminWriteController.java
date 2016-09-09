package kr.cafein.admin.controller;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

@Controller
@SessionAttributes("adminPage")
public class AdminWriteController {

	private Logger log= Logger.getLogger(this.getClass());
	
	//@Resource(name="memberService")
	//�Ʒ��� ���� �̸��̸� name ��� �����൵ ��
	@Resource
	private MemberService memberService;
	
	//Ŀ�ǵ� ��ü(�ڹٺ�) �ʱ�ȭ
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}
	
	@RequestMapping(value="/admin/adminRegister.do",method=RequestMethod.GET)
	public String form() {
		
		
		//Ÿ�Ͻ� ����
		return "admin_login";
	}
	
	@RequestMapping(value="/admin/adminRegister.do",method=RequestMethod.POST)
	public ModelAndView submit(@ModelAttribute("command") @Valid MemberCommand memberCommand, BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + memberCommand);
		}
		
		
		 ModelAndView mav = new ModelAndView();
		
		if(result.hasFieldErrors("u_email") || result.hasFieldErrors("u_password")||result.hasFieldErrors("u_name")) {
			log.debug("ȸ����� ����! ���� ");
			
			 mav.setViewName("admin_login");
			 mav.addObject("currentAdminPage", 1); // 0 �α���
			   
			
			 return mav;
		}
		
		
		memberCommand.setU_level(2);
		
		log.debug("ȸ����� ��������! ��Ͻ��� ");
		log.debug("memberCommand level Ȯ��~~~~~~ : " + memberCommand);
		//ȸ�� ����
		memberService.insert(memberCommand);
		
		
	      mav.setViewName("admin_login");
	      mav.addObject("currentAdminPage", 0); // 0 �α���
	     
		
		return mav;
	}
}
