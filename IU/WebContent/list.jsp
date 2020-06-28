<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,iu.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User List</title>
<style type="text/css">
#ba{background-color:#996699;
	margin-left: auto;
	margin-right: auto;}
#t1{border: 3px solid #DDA0DD;
	color: #FFFF99;
	font-size: 22px;
	font-weight: bold;
	margin-top:40px;
}
#div1{color: #FFFF99;
	margin-top:20px;
	height: 20px;
    width: 500px;
    text-align: center;
    font-style: 黑体;
    margin-left: auto;
    margin-right: auto;
    }
</style>
</head>
<body id="ba">
<div id="div1"><h1>粉丝用户信息</h1></div>
<table align="center" id="t1" border="3">
<%
    String select="select * from fan";
    List<List> data = IU.queryList(select);
    for (List list : data) {
    	out.println("<tr>");
    	for (Object object : list) {
    			out.println("<td>");
    			out.println(object);
    			out.println("</td>");
    		}
    	    out.println("<td><a href='del.jsp?id="+list.get(0)+"'>Del</a></td>");
    	    out.println("<td><a href='edit.jsp?id="+list.get(0)+"'>Edit</a></td>");
    		out.println("</tr>");
    	}

%>
</table>
</body>
</html>