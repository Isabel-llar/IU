<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,iu.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FANS</title>
<style type="text/css">
#div70 {height:40px;
	width: 1080px;
	text-align: center;
	font-style:Times New Roman;
	font-size: 22px;
	margin-left:auto;
	margin-right: auto;
	margin-bottom: 10px;
	margin-top: 15px;}
	#div70 ul {list-style-type: none;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
#div70 ul li {float:left;
	position: relative;}
#div70 ul li a{display: block;
	width: 180px;
	text-align: center;
	line-height: 30px;
	color:#FFFF99;
	text-decoration: none;}
#div70 ul li a:hover{background-color: #9370DB;}
#div70 ul li ul{display: none;}
#div70 ul li:hover ul{display: block;
	position: absolute;
	left:0px;
	top:31px;}
#ba{background-color:#996699;
	margin-left: auto;
	margin-right: auto;}
#t1{border: 3px solid #DDA0DD;
	color: #FFFF99;
	font-size: 22px;
	font-weight: bold;
	margin-top:5px;
	text-align: center;
}
#div1{color: #FFFF99;
	margin-top:20px;
	margin-bottom: 40px;
	height: 20px;
    width: 500px;
    text-align: center;
    font-style: 黑体;
    margin-left: auto;
    margin-right: auto;
    }
#div1 h1 a{color: #fff;
    font-size: 18px;}
#div1 h1 a:hover{background-color: #9370DB;}
</style>
</head>
<body id="ba">
<div id="div70">
    <ul><li><a href="Welcome.jsp">WELCOME</a></li> 
		<li><a href="Works.jsp">WORKS</a></li>
		<li><a href="Introduction.jsp">INTRODUCTION</a></li>
		<li><a href="Fans.jsp">FANS</a></li>
		<li><a href="login.jsp">LOGIN</a></li>
		<li><a href="Register.jsp">REGISTER</a></li>
	</ul>
</div>
<div id="div1"><h1>粉丝动态&nbsp;&nbsp;&nbsp;&nbsp;<a href="discuss.jsp">发布动态</a></h1></div>
<table align="center" id="t1" width="1200" border="1">
<%
    String select="select note_subject,note_content,name,note_date from discuss ORDER BY note_date DESC";
    List<List> data = IU.queryList(select);
    for (List list : data) {
    	out.println("<tr>");
    	for (Object object : list) {
    			out.println("<td width='300' height='100'>");
    			out.println(object);
    			out.println("</td>");
    		}
    	out.println("</tr>");
    	}

%>
</table>

</body>
</html>