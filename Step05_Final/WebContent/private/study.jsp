<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   
    String id=(String)session.getAttribute("id");
   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/study.jsp</title>
</head>
<body>
	<h1>공부페이지입니다.</h1>
	<p>열공하세여</p>
	<a href="${pageContext.request.contextPath }/">인덱스로 돌아가기</a>
</body>
</html>