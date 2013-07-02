package com.tarunforum.to;
import java.io.*;
public class Employee implements Serializable
{
	private int empId;
	private String empName;
	private double salary;
	private String deptName;
	
	public void setEmpId(int empId)
	{
		this.empId=empId;
	}
	public int getEmpId()
	{
		return empId;
	}
	
	public void setEmpName(String empName)
	{
		this.empName=empName;
	}
	
	public String getEmpName()
	{
		return empName;
	}
	public void setSalary(double salary)
	{
		this.salary=salary;
	}
	public double getSalary()
	{
		return salary;
	}
	public void setDeptName(String deptName)
	{
		this.deptName=deptName;
	}
	public String getDeptName()
	{
		return deptName;
	}

}