<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WELCOME TO IU'S PLANET</title>
<script language="javascript"> 
    function showPic(e,sUrl){
    	var x,y; 
        x = e.clientX; 
        y = e.clientY; 
        document.getElementById("Layer1").style.left = x+2+'px'; 
        document.getElementById("Layer1").style.top = y+2+'px'; 
        document.getElementById("Layer1").innerHTML = "<img border='0' src=\"" + sUrl + "\">"; 
        document.getElementById("Layer1").style.display = ""; 
    } 
    function hiddenPic(){ 
        document.getElementById("Layer1").innerHTML = ""; 
        document.getElementById("Layer1").style.display = "none"; 
    } 
</script>
<style type="text/css">
#div1 {height:60px;
	width: 1080px;
	text-align: center;
	font-style:Times New Roman;
	font-size: 22px;
	margin-left:auto;
	margin-right: auto;
	margin-bottom: 25px;
	margin-top: 15px;}
#div1 ul {list-style-type: none;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
#div1 ul li {float:left;
	position: relative;}
#div1 ul li a{display: block;
	width: 180px;
	text-align: center;
	line-height: 30px;
	color:#FFFF99;
	text-decoration: none;}
#div1 ul li a:hover{background-color: #9370DB;}
#div1 ul li ul{display: none;}
#div1 ul li:hover ul{display: block;
	position: absolute;
	left:0px;
	top:31px;}
#ba{background-image:url(iu/background.jpg);
    background-size:cover;
	margin-left: auto;
	margin-right: auto;}
#div2{height:500px;
    width:1000px;
    text-align:center;
    font-style:Times New Roman;
    font-size:30px;
    margin-left:auto;
	margin-right: auto;
	margin-top: 100px;}
#div2 h1 a{color:#FFFF99;
    text-decoration: none;}
</style>
</head>
<body id="ba">
<div id="div1">
    <ul><li><a href="Welcome.jsp">WELCOME</a></li> 
		<li><a href="Works.jsp">WORKS</a></li>
		<li><a href="Introduction.jsp">INTRODUCTION</a></li>
		<li><a href="Fans.jsp">FANS</a></li>
		<li><a href="login.jsp">LOGIN</a></li>
		<li><a href="Register.jsp">REGISTER</a></li>
	</ul>
</div>
<div id="div2">
    <div id="Layer1" style="display: none; position: absolute; z-index: 100;"></div>
        <h1><a href="" onmouseout="hiddenPic();" onmousemove="showPic(event,'iu/3.gif');">WELCOME TO IU'S PLANET</a></h1>
</div>   
</body>
</html>