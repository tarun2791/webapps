package com.tarunforum.servlets;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CheckNameServlet extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name=null;
		List<String> ul=new ArrayList<String>();
		ul.add("tarun");
		ul.add("anil");
		ul.add("krish");
		PrintWriter out=response.getWriter();
		if(request.getParameter("username")!=null)
		{
			name=request.getParameter("username");
			if(ul.contains(name))
			{
				out.println("name already exist try another one");
			}
		}
		else
		{
			name="error";
		}
		out.println("You have successfully registered with user name : "+name);
	}
	
}