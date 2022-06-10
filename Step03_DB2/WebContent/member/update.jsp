<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
//1.form에 전송되는 수정할 회원의 정보 얻어오기
int num=Integer.parseInt(request.getParameter("num"));
String name=request.getParameter("name");
String addr=request.getParameter("addr");
//2. DB 에 수정 반영하고
MemberDto dto=new MemberDto();
//=MemberDto dto=new  MemberDto(num,name,addr)
dto.setNum(num);
dto.setName(name);
dto.setAddr(addr);
boolean isSuccess=MemberDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
   <%if(isSuccess){ %>
    <p>
    	<strong><%=num %></strong> 번 회원의 정보를 수정 했습니다.
    	<a href="/Step03_DB2/member/list.jsp">확인</a>
    	<!--절대경로 작성시 컨텍스트경로(step03_DB2)을 작성해야한다.  -->
    	<!-- <a href=list.jsp>확인</a>상대경로 -->
    </p>
   <%}else{%>
  	<p>
  		회원 정보 수정 실패!
  		<a href="updateform.jsp?num=<%=num%>">다시해</a>
  	</p>
   <%} %>
</body>
</html>