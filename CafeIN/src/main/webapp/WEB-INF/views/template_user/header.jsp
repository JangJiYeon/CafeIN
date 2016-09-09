<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <% request.setCharacterEncoding("euc-kr");%>


<!--=== Header ===-->    
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="${pageContext.request.contextPath}/cafein_user/main/main.do">
                <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/logo1-default.png" alt="Logo">
            </a>
            <!-- End Logo -->
            
            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">
                
                    
                    <c:if test="${empty u_uid}">
                    <li><a href="${pageContext.request.contextPath}/cafein_user/user/login.do">Login</a></li>   
                    <li class="topbar-devider"></li>   
                    
                    <li><a href="${pageContext.request.contextPath}/cafein_user/user/register.do">Register</a></li> 
                   
                    
                    </c:if>
                    
                    <c:if test="${!empty u_uid}">
                    <li><a href="${pageContext.request.contextPath}/cafein_user/user/logout.do">Logout</a></li>   
                   
                    </c:if>
                    
                     
                    
                 <c:if test="${!empty u_uid}">
                     <li class="topbar-devider"></li>
                    <!-- 로그인 시에만 보여주기 -->
                    <li><a href="${pageContext.request.contextPath}/cafein_user/mypage/mypage_user_modify_check.do">MyPage</a></li>  
                    </c:if>
                    
                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div><!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                
                	<!-- Home -->
                    <li class="home">
                    	<a href="${pageContext.request.contextPath}/cafein_user/main/main.do">
                            Home
                        </a>
                    </li>
					<!-- Home -->
					
					<!-- Franchise -->
                    <li class="dropdown franchise">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Franchise
                        </a>
                        <ul class="dropdown-menu">
                            <li class="franchise_main"><a href="${pageContext.request.contextPath}/cafein_user/franchise/franchise_main.do">Franchise</a></li>
                            <li class="customizing_main"><a href="${pageContext.request.contextPath}/cafein_user/customizing/customizing_main.do">Customizing</a></li>
                        </ul>
                    </li>
                    <!-- Franchise -->
					
					<!-- Private -->
					<li class="private">
                    	<a href="${pageContext.request.contextPath}/cafein_user/private/private_main.do">
                            Private
                        </a>
                    </li>
					<!-- Private -->
					
					<!-- QnA -->
					<li class="qna">
                    	<a href="${pageContext.request.contextPath}/cafein_user/qna/qna.do">
                            QnA
                        </a>
                    </li>
					<!-- QnA -->
					
					<!-- Notice -->
					<li class="notice">
                    	<a href="${pageContext.request.contextPath}/cafein_user/notice/notice.do">
                            Notice
                        </a>
                    </li>
					<!-- Notice -->
					
            	</ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
        
    </div>
    <!--=== End Header ===-->