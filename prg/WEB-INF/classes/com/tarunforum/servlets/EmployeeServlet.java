package com.tarunforum.servlets;

import java.io.*;
import javax.servlet.*;


import javax.servlet.http.*;
import com.tarunforum.to.Employee;
import com.tarunforum.dao.*;

public class EmployeeServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		RequestDispatcher view=request.getRequestDispatcher("index.jsp");
		view.forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		int id=0;
		int empId=++id;
		String empName=request.getParameter("empName");
		String empDept=request.getParameter("empDept");
		double salary=Double.parseDouble(request.getParameter("salary"));
		
		Employee employee=new Employee();
		employee.setEmpName(empName);
		employee.setEmpId(empId);
		employee.setDeptName(empDept);
		employee.setSalary(salary);
		
		int result;
		int success=0;
		
		EmployeeDao dao=new EmployeeDao();
		try
		{
		
			result=dao.addEmployee(employee);
			if(result>0)
			{
				success=1;
			}
			
		}
		catch(Exception e)
		{
			request.setAttribute("error",e.getMessage());
		}
		
		response.sendRedirect("displayEmployee.do?s="+success);
		
	}
}