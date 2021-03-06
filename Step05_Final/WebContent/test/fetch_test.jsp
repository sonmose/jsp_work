<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fetch_test.jsp</title>
</head>
<body>
<a href="get_msg.jsp">이동하기</a>
<br />
<button id="myBtn">눌러보셈</button>
<script>
   document.querySelector("#myBtn").addEventListener("click", function(){
      fetch("get_msg.jsp")
      .then(function(response){
    	  /*
    	   	서버에서 응답한 문자열이 json 형식이면 response.json() 을 호출해서 리턴하고
    	   	그 이외의 형식이면 response.text() 을 호출해서 리턴해 주어야 한다.
    	  */
         return response.text();
      })
      .then(function(data){
    	  /*
    	  	위의 함수에서 response.json() 을 호출해서 리턴했다면 data는 object 혹은 arry 이다.
    	  	위의 함수에서 response.text() 을 호출해서 리턴했다면 dtta는 string(서버가 응답한 문자열) 이다.
    	  */
         console.log(data);
      });
      console.log("get_msg.jsp 에 요청을 했습니다");
   });
</script>
</body>
</html>