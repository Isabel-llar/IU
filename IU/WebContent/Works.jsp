<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WORKS</title>
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
#ba{background-color:#996699;
	margin-left: auto;
	margin-right: auto;}
#div2 {height:600px;
	width: 1000px;
	text-align: center;
	font-style:Times New Roman;
	font-size: 22px;
	margin-left:auto;
	margin-right: auto;}
#div2 ul {list-style-type: none;
	margin: 0px;
	padding: 0px;}
#div2 ul li {float:left;
    position: relative;}
#div2 ul li h1 a {float:left;
    position: relative;
    color: #FFFF99;
    height: 50px;
    width:500px;}
#div2 ul li a{display: block;
	width: 500px;
	text-decoration: none;}
#div2 ul li h1 a:hover{background-color: #9370DB;}
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
  <ul>
    <li><a href="music.jsp"><img src="iu/1.jpg" width="500" height="500" /></a></li>
    <li><a href="drama.jsp"><img src="iu/2.jpg" width="500" height="500" /></a></li>
  </ul>
  <ul>
    <li><h1><a href="music.jsp">MUSIC</a></h1></li>
    <li><h1><a href="drama.jsp">DRAMA</a></h1></li>  
  </ul>
</div>
</body>
</html>