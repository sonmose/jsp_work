<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 int num=Integer.parseInt(request.getParameter("num"));
 boolean isSuccess=TodoDao.getInstance().delete(num);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/delete.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
      <script>
         //알림창 띄우기
         alert("삭제 했습니다.");
         //목록보기로 이동 시키기
         location.href="list.jsp";
      </script>
   <%}else{ %>
      <script>
         alert("삭제 실패!");
         location.href="list.jsp";
      </script>
   <%} %>
</body>
</html>