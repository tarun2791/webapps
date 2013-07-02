package com.tarunforum.servlets;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class DisplayEmployeeServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int success=Integer.parseInt(request.getParameter("s"));
		if(success==1)
		{
			request.setAttribute("result","Employee Successfully Added");
		}
		else
		{
			request.setAttribute("result","Employee not inserted : "+request.getAttribute("error"));
		
		}
		
		RequestDispatcher view=request.getRequestDispatcher("index.jsp");
		view.forward(request, response);
	}
}