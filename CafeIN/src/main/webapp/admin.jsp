<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.sendRedirect(request.getContextPath()+"/admin/adminLogin.do"); // 1.controller 호출
%>