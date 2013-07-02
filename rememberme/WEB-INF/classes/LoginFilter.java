import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginFilter implements Filter
{
	public void init(FilterConfig fc) throws ServletException 	
	{
	
	}
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException
	{
		private final String COOKIE_NAME="usernamecookie";
		String username=request.getSession().getAttribute("user");
		if(username==null)
		{
			String uuid=getCookieValue(request, COOKIE_NAME);
		}
		
	}
	public void destroy()	
	{
	}
	public static String 
}