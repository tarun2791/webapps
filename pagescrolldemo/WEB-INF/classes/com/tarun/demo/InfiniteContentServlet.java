package com.tarun.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class InfiniteContentServlet extends HttpServlet
{
	private static Integer counter=1;
	public void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try
		{
			String resp="";
			
			for(int i=1;i<=10;i++)
			{
				resp+="<p><span>"
					+counter++
					+"</span> This is response from the server </p>";
					
			}
			out.write(resp);
		}
		finally
		{
			out.close();
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		processRequest(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		processRequest(request, response);
	}
}