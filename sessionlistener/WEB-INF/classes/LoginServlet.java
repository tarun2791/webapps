import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("username");
		out.println("welcome "+name);
		HttpSession session=request.getSession();
		session.setAttribute("uname", name);
		
		ServletContext ctx=getServletContext();
		int t=(Integer)ctx.getAttribute("totalusers");
		int c=(Integer)ctx.getAttribute("currentusers");
		
		out.println("Totla users : "+t);
		out.println("Current users : "+c);
		out.println("<br><a href='logout'>Logout</a>");
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		rd.include(request, response);
	}
}
