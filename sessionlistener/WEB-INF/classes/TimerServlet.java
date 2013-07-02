import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.text.*;

public class TimerServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Date d=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("hh:mm:ss");
		out.println(sdf.format(d));
		
	}
}