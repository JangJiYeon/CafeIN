<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
						
		            <!--=== Registre ===-->
				    <div class="log-reg-v3 content-md margin-bottom-30" style="margin-top:7%;padding-top:0px;">
				        <div class="container">
				            <div class="row">
				            
				                <div class="col-md-2"><h2>&nbsp;</h2></div>
				
				                <div class="col-md-5">
				                    <form:form action="mypage_user_modify.do" commandName="command" id="modify_form" class="log-reg-block sky-form" style="padding-left:40px;padding-right:40px;">
				                     <form:hidden path="u_uid" value="${u_uid}" id="u_uid" />
				                    
				                    	<div class="margin-bottom-20"></div>
				                        <h2 class="korean-font">정보를 수정해주세요.</h2>
				                        <div class="margin-bottom-50"></div>
				
				                        <div class="login-input reg-input">
					                     
					                     	<section>
					                            <label class="input login-input">
					                                <div class="input-group">
					                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
					                                    
					                                    <form:input path="u_email" placeholder="Email" name="u_email"
															class="form-control" style="background-color:#eee;" disabled="true"/>
									
					                                </div>
					                            </label>
					                        </section>
						                    					                         
					                        <div class="margin-bottom-20"></div> 
											
											<section>
					                            <label class="input login-input">
					                                <div class="input-group">
					                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
					                                     <form:input path="u_name"  type="text" placeholder="New Username" name="u_name"
																class="form-control" />
					                                    
					                                </div>
					                            </label>
					                        </section> 
					                        
					                        <div class="margin-bottom-20"></div>   
					                            
					                        <section>
					                            <label class="input login-input no-border-top">
					                                <div class="input-group">
					                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
					                                    <form:password path="u_password" placeholder="New Password" id="u_password" 
										name="u_password" class="form-control" />
					                                   
					                                </div>    
					                            </label>
					                        </section>
					                        
					                        <div class="margin-bottom-20"></div>
					                        
					                        <section>
					                            <label class="input login-input no-border-top">
					                                <div class="input-group">
					                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
					                                    <form:password path="confirmpassword" placeholder="Confirm Password"
										name="confirmpassword" class="form-control" />
					                                </div>    
					                            </label>
					                        </section>
				                        
				                        </div> 
				                        
				                        <div class="margin-bottom-30"></div>
										
											<section>
							<div class="inline-group">
								<div class="col-md-6">
									<label class="radio korean-font">	<!--  label="일반회원" -->
									<form:radiobutton path="u_level" value="0"  checked=""/>
										<i class="rounded-x"></i>
										일반회원
									</label>
								</div>
								<div class="col-md-6">
									<label class="radio korean-font">
										<form:radiobutton path="u_level" value="1"  checked=""/>
										<i class="rounded-x"></i>
										사업자 회원
									</label>
								</div>
							</div>
						</section>
						
										
										<div class="margin-bottom-30"></div>
										
				                        <button class="btn-u btn-block margin-bottom-20" type="submit">Register</button>
				                        
										<div class="margin-bottom-20"></div>
										
				                    </form:form>
									
				                </div>
				            </div><!--/end row-->
				        </div><!--/end container-->
				    </div>
				    <!--=== End Registre ===-->
		                
	            </div>
	            
            </div>
        </div><!--/end container-->
    </div>
    <!--=== End Login ===-->     


