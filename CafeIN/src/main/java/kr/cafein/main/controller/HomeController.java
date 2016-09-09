package kr.cafein.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/cafein_user/main/main.do", method = RequestMethod.GET)
	public String home() {
		System.out.println("main");
		return "main";
	}
	
	
	@RequestMapping(value="/cafein_user/private/private_main.do", method = RequestMethod.GET)
	public String private_main() {
		return "private_main";
	}
	
	@RequestMapping(value="/cafein_user/private/private_detail.do", method = RequestMethod.GET)
	public String private_detail() {
		return "private_detail";
	}
	
	@RequestMapping(value="/cafein_user/franchise/franchise_main.do", method = RequestMethod.GET)
	public String franchise_main() {
		return "franchise_main";
	}
	
	@RequestMapping(value="/cafein_user/franchise/franchise_detail.do", method = RequestMethod.GET)
	public String franchise_detail() {
		return "franchise_detail";
	}
	
	@RequestMapping(value="/cafein_user/customizing/customizing_main.do", method = RequestMethod.GET)
	public String customizing_main() {
		return "customizing_main";
	}
	
	@RequestMapping(value="/cafein_user/customizing/customizing_detail.do", method = RequestMethod.GET)
	public String customizing_detail() {
		return "customizing_detail";
	}
	
	@RequestMapping(value="/cafein_user/notice/notice.do", method = RequestMethod.GET)
	public String notice() {
		return "notice";
	}
	
	@RequestMapping(value="/cafein_user/qna/qna.do", method = RequestMethod.GET)
	public String qna() {
		return "qna";
	}

	
	@RequestMapping(value="/cafein_user/mypage/mypage_like_menu.do", method = RequestMethod.GET)
	public String mypage_like_menu() {
		return "mypage_like_menu";
	}
	
	@RequestMapping(value="/cafein_user/mypage/mypage_like_cafe.do", method = RequestMethod.GET)
	public String mypage_like_cafe() {
		return "mypage_like_cafe";
	}
	
	@RequestMapping(value="/cafein_user/mypage/mypage_bookmark_franchise.do", method = RequestMethod.GET)
	public String mypage_bookmark_franchise() {
		return "mypage_bookmark_franchise";
	}
	
	@RequestMapping(value="/cafein_user/mypage/mypage_bookmark_private.do", method = RequestMethod.GET)
	public String mypage_bookmark_private() {
		return "mypage_bookmark_private";
	}
	
	@RequestMapping(value="/cafein_user/mypage/mypage_bookmark_customMenu.do", method = RequestMethod.GET)
	public String mypage_bookmark_customMenu() {
		return "mypage_bookmark_customMenu";
	}
	
}
