<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<%-- stylesheet와 javascript 링크 ignore="true"로 설정하면 null일 때 실행되지 않음--%>
<tiles:importAttribute name="cssList" ignore="true"/>
<tiles:importAttribute name="jsList" ignore="true"/> 

<html lang="en"> 

  <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>
        
    <c:forEach var="cssName" items="${cssList}">
	<link rel="stylesheet" href="<c:out value='${cssName}' />"/>
	</c:forEach>
	</head>	
	
	 <body class="login-content">
 <!-- Login --------------------------------->
 
            <div class="lc-block toggled" id="l-login">
     
      <span id ="message_1"></span>
     
        <form:form action="adminLogin.do" commandName="command">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                   <form:input path="u_email" placeholder="Email" name="u_email" class="form-control" />
                </div>
                <form:errors path="u_email" class="error-color" />
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-accessibility"></i></span>
                <div class="fg-line">
                    <form:password path="u_password" placeholder="Password" name="u_password" class="form-control" />
              
                </div>
                  <form:errors path="u_password" class="error-color" />
            </div>
            
            <div class="clearfix"></div>
            
            <!-- <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Keep me signed in
                </label>
            </div> -->
          
            <button type="submit" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></button>
            
            
            </form:form>
            
            
            <ul class="login-navigation">
                <li data-block="#l-register" class="bgm-red">Register</li>
                <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
            </ul>
        </div>
        
        
        <!-- Register ----------------------------------- -->
        
        
        <div class="lc-block" id="l-register">
         <span id ="message_2"></span>
        
         <form action="adminRegister.do" method="post" id="admin_registerform">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-person"></i></span>
                <div class="fg-line">
                    <input type="text" id="u_name" placeholder="Username" name="u_name" class="form-control" />
                </div>
              
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-mail"></i></span>
                <div class="fg-line">
                       <input type="text" id="u_email" placeholder="Email" name="u_email" class="form-control"/>
                    
                </div>
            </div>
             
	      
            
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-accessibility"></i></span>
                <div class="fg-line">
                   <input type="password" id="u_password" placeholder="Password" name="u_password" class="form-control" />
               
                </div>
                 
            </div>
            
            <div class="clearfix"></div>
            
            <!-- <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Accept the license agreement
                </label>
            </div> -->
            
                <button type="submit" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></button>
            
            
            
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Login</li>
                <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
            </ul>
            
               </form>
            
        </div>
        
        
        
        <!-- Forgot Password  --------------------------------------------->
       
              <div class="lc-block" id="l-forget-password">
        
       
            <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="md md-email"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Email Address">
                </div>
            </div>
            
            <a href="" class="btn btn-login btn-danger btn-float"><i class="md md-arrow-forward"></i></a>
            
            <ul class="login-navigation">
                <li data-block="#l-login" class="bgm-green">Login</li>
                <li data-block="#l-register" class="bgm-red">Register</li>
            </ul>
        </div>
        
        
        
        
        
        
        <c:forEach var="jsName" items="${jsList}">
		<script src="<c:out value='${jsName}' />"></script>
		</c:forEach>

           </body>
        </html>