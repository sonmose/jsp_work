<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 List<String> list=new ArrayList<>();
 list.add("손모세");
 list.add("장승혁");
 list.add("조태희");
 list.add("김덕훈");
 list.add("안진양");

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/list.jsp</title>
</head>
<body>

    <%for(int i=0;i<list.size();i++){ %>
    <p><%=list.get(i) %></p>
   <%} %>

</body>
</html>