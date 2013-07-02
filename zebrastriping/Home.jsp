 <html>
	<head>
		<title>Zebra striping demo</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css"></link>
		<script type="text/javascript" src="./js/jquery-latest.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function()
			{
				$("#container div").mouseover(function(){$(this).addClass("over");}).mouseout(function(){$(this).removeClass("over");});
				$("#container #row:even").addClass("alt");
			
			});
		</script>
	</head>
	<body>
	<center>
	
		<div id="container">
	<% for(int i=0;i<10;i++)
			{
			%>
		<div id="row">
			<div id="left">
				<h1>This is record 1</h1>
			</div>
			<div id="middle">
				<h1>This is record 2</h1>
			</div>
			<div id="right">
				<h1>This is record 3</h1>
			</div>
		</div>
		
		
		<%}%>
		</div>
	</center>
	</body>
 </html>