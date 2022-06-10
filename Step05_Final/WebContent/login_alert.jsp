<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/login_alert.jsp</title>
</head>
<body>
	<script>
	alert("해당 페이지는 로그인후 이용가능합니다");
	location.href="${pageContext.request.contextPath }/users/loginform.jsp"
	</script>
</body>
</html>