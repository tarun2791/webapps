 <html>
	<head>
		<title>Zebra striping demo</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css"></link>
		<script type="text/javascript" src="./js/jquery-latest.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function()
			{
				$(".stripme tr").mouseover(function(){$(this).addClass("over");}).mouseout(function(){$(this).removeClass("over");});
				$(".stripme tr:even").addClass("alt");
			});
		</script>
	</head>
	<body>
	<center>
		<table class="stripme">
			<thead>
				<tr>
					<th>Column 1</th>
					<th>Column 2</th>
					<th>Column 3</th>
					<th>Column 4</th>
					
				</tr>
			</thead>
			<% for(int i=0;i<10;i++)
			{
			%>
				<tr>
				<td> record <%=i%></td>
				<td> record <%=i%></td>
				<td> record <%=i%></td>
				<td> record <%=i%></td>
			</tr>
				
			<%}%>
			
			
		</table>
	</center>
	</body>
 </html>