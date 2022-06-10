<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
String content=request.getParameter("content");


TodoDto dto=new TodoDto();
dto.setContent(content);

boolean isSuccess=TodoDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
</head>
<body>
<div>
   <%if(isSuccess){ %>
      <p class="alert alert-success">
         추가 했습니다. 
         <a class="alert-link" href="list.jsp">목록보기</a>
      </p>
   <%}else{ %>
      <p class="alert alert-danger">
         추가실패! 
         <a class="alert-link" href="insertform.jsp">다시 시도</a>
      </p>
   <%} %>


</div>
</body>
</html>