<html>
	<body>
		<head>
			<title></title>
			<script type="text/javascript">
				function getXMLObject()
				{
					var xmlHttp=false;
					try
					{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
						
					}
					catch(e)
					{
						try
						{
							xmlHttp=new ActiveXObject("Micrisoft.XMLHTTP");
						}
						catch(e2)
						{
							xmlHttp=false;
						}
					}
					if(!xmlHttp && typeof XMLHttpRequest!="undefined")
					{
						xmlHttp=new XMLHttpRequest();
					}
					return xmlHttp;
				}
				
				var xmlhttp=new getXMLObject();
				
				function checkUserName()
				{
					if(xmlhttp)
					{
						var uname=document.getElementByName("username").value;
						xmlhttp.open("POST","register.do?username="+uname,true);
						xmlhttp.onreadystatechange=handleServerResponse;
						xmlhttp.send();
					}
				}
				function handleServerResponse()
				{
					if(xmlhttp.readyState==4)
					{
						if(xmlhttp.status==200)
						{
							document.getElementById("username").innerHTML=xmlhttp.responseText;
						}
						else
						{
							alert("Error during ajex call, Please try again");
						}
					}
				}
			
			</script>
		</head>
		
		<center>
			<form action="register.do" name="registerform" method="post">
				<table>
					<tr>
						<td>Enter a user name :</td>
						<td><input type="text" name="username" onblur="checkUserName();"/></td>
						
					</tr>
					<tr>
						<td colspan=2><div id="username"></div></td>
					</tr>
					<tr>
						<td>Enter Your First name :</td>
						<td><input type="text" name="fname"/></td>
					</tr>
					<tr>
						<td colspan=2><div id="username"></div></td>
					</tr>
					<tr>
						<td>Enter Your Last name :</td>
						<td><input type="text" name="lname"/></td>
					</tr>
					<tr>
						<td colspan=2><div id="username"></div></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="button" value="register" onclick="registerUser();"/></td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</html>