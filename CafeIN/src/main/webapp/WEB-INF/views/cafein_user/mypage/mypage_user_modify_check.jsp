<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left korean-font">회원정보수정</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li><a href="mypage_user_modify_check.do">MyPage</a></li>
                <li class="active korean-font">회원정보수정</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Login ===-->
    <div class="log-reg-v3 content-md" style="padding:40px 15px 40px 15px">
        <div class="container">
            <div class="row">
            
            	<!-- 왼쪽 메뉴바 -->
	            <div class="col-md-3 filter-by-block md-margin-bottom-60">
	                <h1 style="background:#72c02c;">My Page</h1>
	                <div class="panel-group" id="accordion">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
	                            <h2 class="panel-title">
	                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="korean-font" style="text-decoration:none;">
	                                   	 개인정보
	                                    <i class="fa fa-angle-down"></i>
	                                </a>
	                            </h2>
	                        </div>
	                        <div id="collapseOne" class="panel-collapse collapse in">
	                            <div class="panel-body" style="padding-left:10px;">
	                                <ul class="list-unstyled checkbox-list">
	                                    <li>
	                                        <a href="mypage_user_modify_check.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	회원정보수정	
	                                            <!-- <small><a href="#">(23)</a></small> -->
	                                        </a>
	                                    </li>
	                                    <li>
	                                        <a href="mypage_user_leave.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	회원탈퇴
	                                        </a>
	                                    </li>
	                                </ul>        
	                            </div>
	                        </div>
	                    </div>
	                </div><!--/end panel group-->
	
	                <div class="panel-group" id="accordion-v2">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
	                            <h2 class="panel-title">
	                                <a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseTwo" class="korean-font" style="text-decoration:none;">
	                                    	즐겨찾기
	                                    <i class="fa fa-angle-down"></i>
	                                </a>
	                            </h2>
	                        </div>
	                        <div id="collapseTwo" class="panel-collapse collapse in">
	                            <div class="panel-body" style="padding-left:10px;">
	                                <ul class="list-unstyled checkbox-list">
	                                    <li>
	                                        <a href="mypage_bookmark_franchise.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	프렌차이즈카페
	                                        </a>
	                                    </li>
	                                    <li>
	                                        <a href="mypage_bookmark_private.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	개인카페
	                                        </a>
	                                    </li>
	                                    <li>
	                                        <a href="mypage_bookmark_customMenu.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	커스텀마이징메뉴
	                                        </a>
	                                    </li>
	                                </ul>        
	                            </div>
	                        </div>
	                    </div>
	                </div><!--/end panel group-->
	
	                <div class="panel-group" id="accordion-v3">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
	                            <h2 class="panel-title">
	                                <a data-toggle="collapse" data-parent="#accordion-v3" href="#collapseThree" class="korean-font" style="text-decoration:none;">
	                                    	좋아요
	                                    <i class="fa fa-angle-down"></i>
	                                </a>
	                            </h2>
	                        </div>
	                        <div id="collapseThree" class="panel-collapse collapse in">
	                            <div class="panel-body" style="padding-left:10px;">
	                                <ul class="list-unstyled checkbox-list">
	                                    <li>
	                                        <a href="mypage_like_cafe.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	카페
	                                        </a>
	                                    </li>
	                                    <li>
	                                        <a href="mypage_like_menu.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	카페메뉴
	                                        </a>
	                                    </li>
	                                </ul>        
	                            </div>
	                        </div>
	                    </div>
	                </div><!--/end panel group-->
	
	            </div><!-- 왼쪽 메뉴바 끝 -->
            
	                <div class="col-md-9">
	                	<div class="row margin-bottom-5">
	                	
		                	<div class="col-sm-4 result-category">
		                        <h2 class="korean-font">회원정보수정</h2>
		                    </div>
	                    </div>
						 
						<hr style="margin-top: 0px;">
						
						<!-- <div class="filter-results"> -->
					
						<div class="col-md-1">&nbsp;</div>
						
		                <div class="col-md-10" style="margin-top:5%;">
		                    <form:form action="mypage_user_modify_check.do" commandName="command"  id="modify_form" class="log-reg-block sky-form col-md-12">
		                        	<form:errors element="div" class="error-color"/>
		                        	
		                        <form:hidden path="u_uid" value="${u_uid}" id="u_uid" />
		                        
		                        <h2 class="korean-font">비밀번호 재확인</h2>
		
		                        <div class="col-md-1">&nbsp;</div>
		                        <div class="col-md-8">
			                        <section>
			                            <label class="input login-input no-border-top">
			                                <div class="input-group">
			                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
			                                    
			                                  <form:password path="confirmpassword" placeholder="Confirm Password"
										name="confirmpassword" class="form-control" />
			                                  
			                                  </div>    
			                            </label>
			                        </section>
		                        </div>
		                        
		                        <div class="col-md-2" style="padding-left: 0px;">
		                        
		                        	<input type="submit" class="btn-u btn-block margin-bottom-20 korean-font"
		                        		style="margin-bottom: 0px;height:40px;width:90px;" value="확인"/>
		                        		
								</div>
								
		                        <!-- <div class="border-wings"> -->
		                        <div class="col-md-12" style="text-align:center;margin:15px 0 15px 0;">
		                         <form:errors path="confirmpassword" class="error-color" /><br>
		                            <span class="korean-font" style="color:red;">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.</span>
		                        </div>
		                        <!-- </div> -->
		                    </form:form>
		                    
		                   
		                </div>
		                
	            </div>
	            
            </div>
        </div><!--/end container-->
    </div>
    <!--=== End Login ===-->     

