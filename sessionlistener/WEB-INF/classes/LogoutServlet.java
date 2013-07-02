import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LogoutServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		session.invalidate();
		out.println("You are successfully logged out");
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		rd.include(request, response);
	}
}