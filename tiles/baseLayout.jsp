<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>
	<tiles:getAsString name="title"/>
</title>
<link rel="stylesheet" href="http://localhost:9090/tiles/css/style.css" type="text/css"  />

</head>

<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header"/>
		</div>
		<div id="sidebar">
			<tiles:insertAttribute name="sidebar"/>
		</div>
		<div id="body">
			<tiles:insertAttribute name="body"/>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</div>
</body>
</html>
