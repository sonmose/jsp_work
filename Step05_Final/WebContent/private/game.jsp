<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
  
    String id=(String)session.getAttribute("id");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/game.jsp</title>
</head>
<body>
		<h1>게임페이지입니다.</h1>
		<p><%=id %>님 신나게 놀아 보아여!</p>
</body>
</html>