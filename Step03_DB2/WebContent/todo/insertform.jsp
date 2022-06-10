<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insertform.jsp</title>
</head>
<body>
<div class="container">
	<h1>일정 추가 양식</h1>
	<form action="insert.jsp" method="post">
		<div>
			<label for="content">일정</label>
			<input type="text" name="content" id="content" />
		</div>
		<div>
			<label for="regdate">날짜</label>
			<input type="text" name="regdate" id="regdate" />
		</div>
		<button type="submit">추가하기</button>
	</form>
</div>
</body>
</html>