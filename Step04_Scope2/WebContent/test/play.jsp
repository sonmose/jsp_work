<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/play.jsp</title>
</head>
<body>
   <%
      String nick=(String)session.getAttribute("nick");
   %>
   <h1>play.jsp 페이지 입니다.</h1>
   <%if(nick == null){ %>
      <p>session 영역에 "nick" 이라는 키값으로 저장된 값이 없습니다.</p>
   <%}else{%>
      <p>
         <strong><%=nick %></strong> 님 왜 오셨나요? 지금이 놀때 인가여?
         <a href="delete.jsp">세션에 저장된 내용 삭제하기(로그아웃)</a>
      </p>
   <%} %>}
</body>
</html>