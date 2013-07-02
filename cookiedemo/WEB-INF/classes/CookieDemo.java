import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CookieDemo extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name=request.getParameter("name");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Cookie ck[]=request.getCookies();
		String username="";
		for(Cookie temp:ck)
		{
			 username=temp.getValue();
		}
		if(username.equals(name))
		{
			out.println(" Welcome back "+username+" You have previously visited this page");
		}
		else
		{
			out.println("Welcome "+name+" You are a new User");
			Cookie c=new Cookie("uname",name);
			c.setMaxAge(60*3);
			response.addCookie(c);
		}
		
	}	
		
}