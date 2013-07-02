import javax.servlet.*;
import javax.servlet.http.*;

public class CountUserListener implements HttpSessionListener
{
	ServletContext ctxt=null;
	static int total=0,current=0;
	
	public void sessionCreated(HttpSessionEvent e)
	{
		total++;
		current++;
		
		ctxt=e.getSession().getServletContext();
		ctxt.setAttribute("totalusers",total);
		ctxt.setAttribute("currentusers",current);
	}
	
	public void sessionDestroyed(HttpSessionEvent e)
	{
		current--;
		ctxt.setAttribute("currentusers",current);
		
	}
}