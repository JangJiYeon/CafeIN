<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<%-- stylesheet와 javascript 링크 ignore="true"로 설정하면 null일 때 실행되지 않음--%>
<tiles:importAttribute name="cssList" ignore="true"/>
<tiles:importAttribute name="jsList" ignore="true"/> 
 
<!-- <!DOCTYPE html> -->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>CafeIn</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<c:forEach var="cssName" items="${cssList}">
	<link rel="stylesheet" href="<c:out value='${cssName}' />"/>
	</c:forEach>
</head>	

<body>
<div class="wrapper">
    <!-- 헤더 시작 -->
    <tiles:insertAttribute name="header"/>
    <!-- 헤더 끝 -->
   	<!-- 바디 시작 -->
   	<tiles:insertAttribute name="body"/>
   	<!-- 바디 끝 -->
	<!-- 푸터 시작 -->
    <tiles:insertAttribute name="footer"/>
    <!-- 푸터 끝 -->
</div><!--/wrapper-->


<c:forEach var="jsName" items="${jsList}">
	<script src="<c:out value='${jsName}' />"></script>
</c:forEach>

<!-- <script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
      	LayerSlider.initLayerSlider();
    });
</script> -->
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->
</body>
</html>