<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 request.setCharacterEncoding("utf-8");
 
 int num=Integer.parseInt(request.getParameter("num"));
 String content=request.getParameter("content");

 
 TodoDto dto=new TodoDto();
 
 dto.setNum(num);
 dto.setContent(content);
 
 
 boolean isSuccess=TodoDao.getInstance().update(dto);
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/update.jsp</title>
</head>
<body>
	 <%if(isSuccess){ %>
    <p>
    	<strong><%=num %></strong> 번 일정의 정보를 수정 했습니다.
    	<a href="/Step03_DB2/todo/list.jsp">확인</a>
    	
    </p>
   <%}else{%>
  	<p>
  		일정 수정 실패!
  		<a href="updateform.jsp?num=<%=num%>">error</a>
  	</p>
   <%} %>
</body>
</html>