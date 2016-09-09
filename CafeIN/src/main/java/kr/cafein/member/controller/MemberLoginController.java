package kr.cafein.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

@Controller //@Controller라는걸 명시해줘야 읽을 수 있음
public class MemberLoginController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	//커맨드 객체(자바빈) 초기화 _해야만 command를 찾을 수 있음
	@ModelAttribute("command")
	private MemberCommand initCommand() {
		return new MemberCommand();
	}
	
	@RequestMapping(value="/cafein_user/user/login.do",method=RequestMethod.GET) //submit전 처음 화면(form) 로딩
	public String form() {
		return "login";
	}
	
	@RequestMapping(value="/cafein_user/user/login.do",method=RequestMethod.POST) // submit했을때
	public String submit(@ModelAttribute("command") @Valid MemberCommand memberCommand, BindingResult result, HttpSession session) {
															// command라는 이름의 자바빈 클래스를 가져와 MemberCommand의 속성들과 하나씩 매칭,저장 후 
															// BindingResult로  memberCommand의 해당 속성 필드의 @NotEmpty등 에러 결과를 가져옴
														 	// HttpSession 은 로그인 했을때의 세션을 저장하기 위해 사용
		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + memberCommand);
			// 가져온 command 의 값을 확인
		}
		
		//id와 passwd 필드만 체크 -> 에러가 있으면 다시 form 으로 돌려보냄 에러 메시지를 error 영역에 표시
		if(result.hasFieldErrors("u_email") || result.hasFieldErrors("u_password")) {
			
			return form();
		}
		
	
		// memberService에 있는 selectUid 메서드를 이용해 가져온(사용자가 입력한) 이메일 로 회원의 u_uid(seq값)를 가져옴
		String uid = memberService.selectUid(memberCommand.getU_email());
		log.debug("가져온 uid 값 : " + uid);
		
		if(uid == null || uid.isEmpty()){
			result.rejectValue("u_password", "NonexistentId"); // 존재하지 않는 아이디(이메일)
			
			return form();
		}
		
		
		
		//로그인 체크 (id 또는 비밀번호 일치 여부 체크)
		try {
			
			MemberCommand member = memberService.selectMember(uid); // 가져온 u_uid값으로 해당 회원의 전체 정보를 가져옴
		
			
			boolean check = false;
			
			if(member != null) { // 가져온 회원의 정보가 null 이면 존재하지 않는 아이디
								// null 이 아니라면 (정보가 있다면 ) 비밀번호 일치여부 체크
				//비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(memberCommand.getU_password());
			}
			
			if(member.getU_level() ==2){
				result.rejectValue("u_email", "messageCode", "회원용 이메일을 사용해 주세요.");
					return form();
			}
			
			if(check) {
				//인증성공, 로그인 처리 세션에 u_uid(seq)값과 레벨 저장
				session.setAttribute("u_uid", member.getU_uid());
				session.setAttribute("u_level", member.getU_level());
				log.debug("인증성공 ");
				return "redirect:/cafein_user/main/main.do"; // 인증성공하면 메인으로
			}else {
				//인증실패
				log.debug("인증실패");
				throw new Exception(); // 인증실패하면 예외를 던져줌
			}
			
		} catch(Exception e) {
			//인증 실패로 폼 호출
			result.reject("invalidIdOrPassword"); // 예외를 잡아서 src/main/resources/messages/validation.properties에있는
												// invalidIdOrPassword 메시지를 result 결과로 보내줌. error에 표시
			
			return form();
		}
		
	}
	
}



