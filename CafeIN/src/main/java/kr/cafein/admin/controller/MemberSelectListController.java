package kr.cafein.admin.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.cafein.member.domain.MemberCommand;
import kr.cafein.member.service.MemberService;

// spring MVC의 Controller 클래스 선언을 단순화시켜준다.
//스프링 컨트롤러, 서블릿을 상속할 필요가 없으며, @Controller로 등록된 클래스 파일에 대한 bean을 자동으로 생성해준다.
@Controller
public class MemberSelectListController {
   //로그처리
   private Logger log = Logger.getLogger(this.getClass());
   
   @Resource(name="memberService")
   private MemberService memberService;
   
   	   // 2. 호출된 컨트롤러  @RequestMapping - URL을 컨트롤러의 메서드와 매핑할 때 사용한다.
	   // method 값을 정의하지 않는 경우 모든 HTTP Request method에 대해서 처리
   		// value 값은 클래스 선언에 정의한 @RequestMapping의 value 값을 상속받는다. 
   @RequestMapping("/admin/memberlist.do") 
   public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1")
                                    int currentPage){
	   // ModelAndView - 뷰 정보 및 모델 정보를 담고 있는 ModelAndView 객체 
	   
/*@RequestParam annotation은 key=value 형태로 화면에서 넘어오는 쿼리스트링 
	   혹은 폼 데이터를 메소드의 파라미터로 지정한다. 대체로 파라미터의 개수가 적을때 사용한다.
	 
	   method( @RequestParam( PARAM ) Obj )
	   method( @RequestParam Map)
PARAM: 전달되는 파라미터의 이름을 지정한다. 이름 외에 기본값(defaultValue), 필수여부(required)를  설정할 수 있다.
 		값이 할당될 변수의 타입이 Map 혹은 MultiValueMap일 땐 명시하지 않는다.
Obj: PARAM으로 지정된 이름과 일치하는 파라미터의 값을 할당할 변수. 보통 String 타입을 선언하지만 넘어온 값이 반드시 숫자일 경우에 한해서 int 등의 숫자 타입도 가능하다.

@RequestParam 어노테이션이 적용된 파라미터는 기본적으로 필수 파라미터이다.
따라서, 명시한 파라미터가 존재하지 않을 경우 400 에러가 발생한다.
필수 요건이 아닐 경우, @RequestParam(value="id", required="false")와 같이 옵션을 주고 사용할 수 있다.



Map 방식 (N:1 매핑)

값을 할당할 변수의 타입을 Map 혹은 MultiValueMap으로 사용하는 방법.

@RequestMapping("/faqDetail")
public String faqDetail(@RequestParam HashMap<String, String> map) {
    String searchValue = map.get("searchValue"); 
    // req.getParameter("searchValue") 와 같다.
 
    return "/board/faq/faqDetail";
}

*/
	   
	   
      if(log.isDebugEnabled()){
         log.debug("pageNum : " + currentPage);
      }
      
      int count = memberService.getMemberCount(); // 회원의 총 수를 구함
      
     // PagingUtil page = new PagingUtil(currentPage,count,20,20,"memberlist.do");
      
      List<MemberCommand> list = null;
      if(count>0){
    	  
    	 /* Map, ModelMap

    	  뷰에 전달할 객체 정보를 담고 있는 Map 혹은 ModelMap을 리턴한다. 이때 뷰 이름은 요청 URL로부터 결정된다. 
    	  */
    	  
    	  Map<String,Object> map = new HashMap<String,Object>();
    	
    	  
    	  list = memberService.getAllMemberList();
      }else{
    	  list = Collections.emptyList();
      }
      
      
      ModelAndView mav = new ModelAndView();
      mav.setViewName("memberManagement");
      mav.addObject("count", count);
      mav.addObject("list", list);
     
     
      return mav;
   }
   
}