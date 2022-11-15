package servletdemo.part03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginPro")
public class LoginProController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//post : 한글깨짐 문제 해결 (순서 중요)
		req.setCharacterEncoding("UTF-8"); //post 방식에서 한글 입력이 가능하게 하기 위해 사용
		
		String fid = req.getParameter("fid");
		String fpass = req.getParameter("fpass");
		
		MemberDTO dto = new MemberDTO();
		dto.setFid(fid);
		dto.setFpass(fpass);
		
		req.setAttribute("dto", dto);
		
		String path = "/servletview/part03/result.jsp";
		RequestDispatcher dis = req.getRequestDispatcher(path);
		dis.forward(req, resp);
		
	}//doPost()
	
}//end class