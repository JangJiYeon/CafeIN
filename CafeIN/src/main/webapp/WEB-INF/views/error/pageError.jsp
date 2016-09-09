<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<h2 class="align-center">오류 발생</h2>
	<div class="align-center">
		게시판에 오류가 발생했습니다. 관리자에게 문의하시기 바랍니다.
		<br>
		<a href="${pageContext.request.contextPath}/main/main.do">메인으로</a>
	</div>
</div>
<%
	Throwable e = (Throwable)request.getAttribute("exception");
	e.printStackTrace();
%>