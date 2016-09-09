<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Login</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li class="active">Login</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->
    
    <!--=== Login ===-->
    <div class="log-reg-v3 content-md">
        <div class="container" style="margin-top:3%;">
            <div class="row" style=" margin-bottom: 110px;">
            
				<div class="col-md-4"><h2>&nbsp;</h2></div>
                <div class="col-md-4">
                  
                      
				<div class="page-main-style">
					
					<form:form action="login.do" commandName="command" id="sky-form1" class="log-reg-block sky-form" novalidate="novalidate">
						
						
                        <h2 style="margin-bottom:50px;">Log in to your account</h2>
						
						<section>
							<label class="input login-input">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user"></i></span>


									<form:input path="u_email" placeholder="Email" name="u_email"
										class="form-control" />
									

								</div>
							</label>
							<form:errors path="u_email" class="error-color" />
						</section>


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
					<form:errors element="div" class="error-color" />

						<input type="submit" value="Log in"
							class="btn-u btn-block margin-bottom-20"
							style="margin-top: 30px;">

					</form:form>
				</div>
				
				
                        <div class="border-wings">
                            <span>or</span>
                        </div>
                            
                        <div class="row columns-space-removes">
                            <p class="text-center" style="margin-bottom:20px;">Don't have account yet? 
                            	<br>no worries, <a class="color-green" href="register.do">click here</a> Create a CafeIn account.
                        </div>
                
                    <div class="margin-bottom-20"></div>
                    
                </div>
                
            </div><!--/end row-->
        </div><!--/end container-->
    </div>
    <!--=== End Login ===-->

    
	<!-- style="position: absolute; bottom: 0; width: 100%;" -->

