import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class LoginServlet extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean remember="true".equals(request.getParameter("remember"));
		boolean validUser=false;
		Cookie ck=null;
		Map<String, String> map=null;
		if(username.equals("admin") && password.equals("admin"))
		{
			validUser=true;
		}
		if(validUser)
		{
			request.getSession().setAttribute("user",username);
			if(remember)
			{
			
				String uuid=UUID.randomUUID().toString();
				map=new HashMap<String,String>();
				map.put(uuid, username);
				ck=new Cookie("usernamecookie",uuid);
				ck.setPath("/");
				ck.setMaxAge(60*6);
				response.addCookie(ck);
								
			}
			else
			{
				map.remove("username");
				ck.setMaxAge(0);
				response.addCookie(ck);
			}
		}
	}
}