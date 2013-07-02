<html>
<head>
	<title>
		Please Login Here
	</title>
	<script type="text/javascript" src="./js/jquery.min.js"></script>
	<script type="text/javascript">
	var auto_refresh = setInterval(
	function ()
	{
		$('#timer').load('timer').fadeIn("slow");
	}, 1000); // refresh every 1000 milliseconds
	
	var users = setInterval(
	function ()
	{
		$('#users').load('login').fadeIn("slow");
	}, 1000); // refresh every 1000 milliseconds
	</script>
</head>
<body>
	<center>
		<form action="login" method="post">
			Name :<input type="text" name="username"/><br><br>
			Password :<input type="password" name="pass"/><br><br>
			<input type="submit" value="login"/>
		</form>
		<div id="timer" name="timer"></div><br><br>
		<div id="users"></div>
	<center>
</body>
</html>