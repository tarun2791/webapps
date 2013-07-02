<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
02.
 
03.
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
04.
"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script type="text/javascript" src="http://localhost:8080/projectautomation/js/login-form.js"></script>
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/projectautomation/css/loginform.css"></link>
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/projectautomation/css/style.css"></link>
	</head>
	<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header" />
			
		</div>
		<div id="sidebar">
			<tiles:insertAttribute name="menu" />
		</div>		
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
		
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	</body>
<html>