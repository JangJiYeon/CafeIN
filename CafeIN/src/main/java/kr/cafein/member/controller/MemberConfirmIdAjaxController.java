package kr.cafein.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;


@Controller
public class MemberConfirmIdAjaxController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;
	
	@RequestMapping("/cafein_user/user/confirmId.do")
	@ResponseBody
	public Map<String,String> process(@RequestParam("u_email") String u_email){
		
		if(log.isDebugEnabled()){
			log.debug("u_email : " + u_email);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		log.debug("map 확인중 ");

		
		try{
		
			String uid = memberService.selectUid(u_email);
			if(uid != null){

				log.debug("가져온 uid 값 : " + uid);
				
				// 아이디 중복
				map.put("result", "idDuplicated");
			}else{
				// 아이디 미 중복
				map.put("result", "idNotFound");
			}
		}catch(Exception e){
			log.error(e);
			map.put("result", "failure");
		}
		
		return map;
	}
			
}
