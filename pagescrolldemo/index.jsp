<html>
	<head>
		<title>Load content while scrolling with java, ajax and jquery</title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<style type="text/css">
		body{
			font-family:Arial;
			font-size:.93em;
			}
			#contentbox{
			background-color:#FAFAFA;
			border:2px solid #888;
			height:300px;
			overflow:scroll;
			padding:4px;
			width:500px;
			}

            #contentbox p{
                border:1px solid #EEE;
                background-color:#F0F0F0;
                padding:3px;
            }
            #contentbox p span{
                color:#00F;
                display:block;
                font:bold 21px Arial;
                float:left;
                margin-right:10px;
            }
        </style>
		
		<script type="text/javascript">
			 $(document).ready(function(){
                $contentLoadTriggered = false;
                $("#contentbox").scroll(function(){
                    if($("#contentbox").scrollTop() >= ($("#contentwraper").height() - $("#contentbox").height()) && $contentLoadTriggered == false)
                    {
                        $contentLoadTriggered = true;
                        $.get("infinitContentServlet", function(data){
                            $("#contentwraper").append(data);
                            $contentLoadTriggered = false;
                        });
                    }

                });
            });


		</script>

	</head>
	<body>
		<h1>Demo page: Infinite Scroll with Java and JQuery</h1>
		<p>This page is a demo for loading new content while scrolling.</p>
		<div id="contentbox">
			<div id="contentwraper">
				<p><span>1</span>paragraph 1 1Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>2</span>paragraph 21Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>3</span>paragraph 31Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>4</span>paragraph 41Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>5</span>paragraph 51Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>6</span>paragraph 61Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>1</span>paragraph 11Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>2</span>paragraph 21Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                4Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ornare facilisis mollis. Etiam non sem massa, a gravida nunc. Mauris lectus augue, posuere at viverra sed, dignissim sed libero. 
                5Lorem ipsum dolor sit amet, consectetur adip</p>
				<p><span>3</span>paragraph 3</p>
				
				
			</div>
		</div>
	</body>
</html>