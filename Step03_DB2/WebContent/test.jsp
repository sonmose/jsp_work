<%@page import="java.sql.Connection"%>
<%@page import="test.util.DbcpBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//Connection 객체의 참조값 얻어오기
 	Connection conn=new DbcpBean().getConn();
 	
 	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test.jsp</title>
</head>
<body>
	<h1>DB 연결 테스트 결과</h1>
	<%if(conn!=null){%>
		<p>DB 연결 Good <a href="list.jsp">목록보기</a></p>
	<%}else{%> 
		<p>DB 연결 fail <a href="insert.form">다시시도</a></p>
		<%}%>
	
</body>
</html>