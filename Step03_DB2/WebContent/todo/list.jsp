<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
TodoDao dao=TodoDao.getInstance();
List<TodoDto> list=dao.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/include/navbar.jsp">
	<jsp:param value="todo" name="thisPage"/>
</jsp:include>
<div class="container">
<a href="insertform.jsp">일정추가</a>
	<h1>오늘의 할일.</h1>
	<table class="table table-striped">
		<thead class="table-dark">
			<tr>
				<th>번호</th>
				<th>할일</th>
				<th>Date</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		 <tbody>
      <%for(TodoDto tmp:list){ %>
         <tr>
            <td><%=tmp.getNum() %></td>
            <td><%=tmp.getContent() %></td>
            <td><%=tmp.getRegdate() %></td>
            <td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
            <td><a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
         </tr>
      <%} %>
      </tbody>
	</table>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>