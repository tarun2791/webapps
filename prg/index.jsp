<html>
	<body>
			<h5><ul><li><font color="red">
			<%=request.getAttribute("result")%>
			</font></li></ul></h5>
		<form action="employee.do" method="post">
			<table align="center">
				<tr>
					<td>Employee Name : </td>
					<td><input type="text" name="empName"/></td>
				</tr>
				<tr>
					<td>Employee Department : </td>
					<td><input type="text" name="empDept"/></td>
				</tr>
				<tr>
					<td>Employee Salary : </td>
					<td><input type="text" name="salary"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" name="submit" value="Insert Record"/>
					</td>
				</tr>
				
			</table>
		</form>
	</body>
</html>