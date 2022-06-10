<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//1.session scope 에서 로그인된 아이디 불러오기
 	String id=(String)session.getAttribute("id");
 	//2. DB에서 가입 정보를 불러온다.
 	UsersDto dto=UsersDao.getInstance().getData(id);
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/info.jsp</title>
<style>
   /* 프로필 이미지를 작은 원형으로 만든다 */
   #profileImage{
      width: 50px;
      height: 50px;
      border: 1px solid #cecece;
      border-radius: 50%;
   }
</style>
</head>
<body>
<div class="container">
	<h1>가입 정보 입니다.</h1>
	<table>
      <tr>
         <th>아이디</th>
         <td><%=dto.getId() %></td>
      </tr>
      		<th>프로필 이미지</th>
      		<td>
      			<%if(dto.getProfile()==null){ %>
      			<svg id="profileImage"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
  <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
</svg>
      			<%}else{ %>
      			 <img id="profileImage"src="${pageContext.request.contextPath }<%=dto.getProfile()%>">
      			
      			<%} %>
      		</td>
      <tr>
         <th>비밀번호</th>
         <td><a href="pwd_updateform.jsp">수정하기</a></td>
      </tr>
      <tr>
         <th>이메일</th>
         <td><%=dto.getEmail() %></td>
      </tr>
      <tr>
         <th>가입일</th>
         <td><%=dto.getRegdate() %></td>
      </tr>
   </table>
   <a href="updateform.jsp">개인정보 수정</a>
   <a href="javascript:deleteConfirm()">탈퇴</a>
	
</div>
	<script>
		function deleteConfirm(){
			let isDelete=confirm("정말 탈퇴 하시겠습니까?");
			if(isDelete){
				location.href="delete.jsp";
			}
		}
	
	</script>
</body>
</html>