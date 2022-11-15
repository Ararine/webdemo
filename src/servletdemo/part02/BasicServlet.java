package servletdemo.part02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/basic02")
public class BasicServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "/servletview/part02/view.jsp";
		
		RequestDispatcher dis = req.getRequestDispatcher(path); //경로 연결
		dis.forward(req, resp); //서버단에서 보냄 //페이지 이동
		
		
		
	}//end doGet()
}//end class
