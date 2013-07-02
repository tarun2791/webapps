package com.tarunforum.dao;
import java.io.*;
import com.tarunforum.to.Employee;

public class EmployeeDao
{
	public int addEmployee(Employee emp) 
	{
		try
		{
			FileOutputStream fos=new FileOutputStream("EmployeeDetails.txt", true);
			ObjectOutputStream oos=new ObjectOutputStream(fos);
			oos.writeObject(emp);
			return 1;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return 0;
		}
		
		
		
	}
		
}