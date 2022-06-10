package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fortune")
public class FortuneServlet extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//1.오늘의 운세를 얻어오는 비즈니스 로직을 수행했다고 가정
	String a="남하일언중천금";
	
	//2.로직을 수행결과 데이터(모델)을 HttpServletRequest
	req.setAttribute("fortuneToday", a);
	
	/*
	 * 요청 전달자 객체(RequestDispatcher)
	 * 
	 * HttpServletRequest 객체의
	 * 
	 * .getRequestDispatcher("요청을 전달받을 WebContent 안에 있는 jsp 페이지의 위치")
	 * 
	 * 메소드를 이용해 얻어낼수있다.
	 */
	RequestDispatcher rd=req.getRequestDispatcher("/test/fortune.jsp");
	
	//지정된 jsp 페이지로응답을 위임 시킨다.
	rd.forward(req,resp);
	}
}
