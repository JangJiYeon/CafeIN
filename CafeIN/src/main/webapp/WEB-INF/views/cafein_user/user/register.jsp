<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Register</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li class="active">Register</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->
    
    <!--=== Registre ===-->
    <div class="log-reg-v3 content-md margin-bottom-30">
        <div class="container">
            <div class="row">
            
                <div class="col-md-3"><h2>&nbsp;</h2></div>

                <div class="col-md-6">
                <form:form action="register.do" commandName="command" id="register_form"  class="log-reg-block sky-form" style="padding-left:40px;padding-right:40px;">
				<form:errors element="div" class="error-color"/>
                   
                    
                    	<div class="margin-bottom-20"></div>
                        <h2>Register a new account</h2>
                        <div class="margin-bottom-50"></div>

                        <div class="login-input reg-input">
	                     
	                     	<div class="col-md-9" style="padding:0;">
	                     	<section>
	                            <label class="input login-input">
	                                <div class="input-group">
	                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
	                                   
									<form:input path="u_email" placeholder="Email" name="u_email" id="u_email"
										class="form-control" />
	                                </div>
	                            </label>
	                            	 <span id ="message_id"></span>
				<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/ajax-loader.gif"
					width="16" height="16" style="display:none;" id="loading">
	                        
	                        </section> 
	                        </div>
	                        <div class="col-md-3" style="padding:0;">
	                        
	                        <input type="button" id="confirmId" value="중복체크" class="btn-u btn-block korean-font" 
	                        style="height:39px;text-decoration:none;color:#ffffff;padding-top:8px;margin:0 0 10px 2px;">
				
	                        </div>
	                       
	                         
	                        <div class="margin-bottom-5"></div> 
							
							<section>
	                            <label class="input login-input">
	                                <div class="input-group">
	                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
	                                    <form:input path="u_name"  type="text" placeholder="Username" name="u_name"
										class="form-control" />
	                              
	                                </div>
	                            </label>
	                            	<form:errors path="u_name" class="error-color" />
	                        </section> 
	                        
	                        <div class="margin-bottom-20"></div>   
	                            
	                        <section>
	                            <label class="input login-input no-border-top">
	                                <div class="input-group">
	                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
	                                    <form:password path="u_password" placeholder="Password"
										name="u_password" class="form-control" />
	                                </div>    
	                            </label>
	                            <form:errors path="u_password" class="error-color" />
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
	                          <form:errors path="confirmpassword" class="error-color" /> 
	                      
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
						
						<input type="submit" value="Create Account" class="btn-u btn-block margin-bottom-20">
						
                         </form:form>
                        
                        
                        <div class="border-wings">
                            <span>or</span>
                        </div>
                            
                        <div class="row columns-space-removes">
							<p class="text-center">Already you have an account? <a href="login.do">Sign In</a></p>
                        </div>
                        
                  

                    <!-- <div class="margin-bottom-20"></div>
                    <p class="text-center">Already you have an account? <a href="login.html">Sign In</a></p> -->
                </div>
            </div><!--/end row-->
        </div><!--/end container-->
    </div>
    <!--=== End Registre ===-->

    
	<!-- style="position: absolute; bottom: 0; width: 100%;" -->
