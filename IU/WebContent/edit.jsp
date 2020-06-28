<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="iu.*,java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑用户</title>
<style type="text/css">
#ba{background-color:#996699;
	margin-left: auto;
	margin-right: auto;}
#div1{color: #FFFF99;
	margin-top:20px;
	height: 20px;
    width: 500px;
    text-align: center;
    font-style: 黑体;
    margin-left: auto;
    margin-right: auto;
    }
#div2{width: 350px;
    height: 250px;
    text-align: center;
    color: #FFFF99;
	font-size: 22px;
	font-weight: bold;
	margin-top:40px;
	margin-left: auto;
	margin-right: auto;}
</style>
</head>
<body id="ba">
<%
String s_id=request.getParameter("id");
Map user=null;
int id=0;
if (s_id != null) {
	try{
		id=Integer.parseInt(s_id);
		String sql="select * from fan where id=?";
		List<Map> data=IU.queryMap(sql, id);
		if(data.size()>0){
			user=data.get(0);
		}
	}catch(Exception e){
		
	}
%>
<div id="div1"><h1>编辑粉丝用户信息</h1></div>
<div id="div2">
<form action="edit.jsp" method="post">
<input name="uid" type="hidden" value="<%=id%>"><br>
    用户名:&nbsp;&nbsp;<input name="name" type="text" value="<%=user.get("name")%>"><br><br>
    密&nbsp;&nbsp; 码:&nbsp;&nbsp;<input name="password" type="text" value="<%=user.get("password")%>"><br><br>
  email:&nbsp;&nbsp;<input
      name="email" type="text" value="<%=user.get("email")%>"><br><br>
      <input type="reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit">
    </form>
</div>
        <%
    }else{
    	
    	request.setCharacterEncoding("UTF-8");
    	String uid = request.getParameter("uid");
    	String name = request.getParameter("name");
    	String password = request.getParameter("password");
    	String email = request.getParameter("email");
    	if(null != name){
    String sql="update fan set name=?,password=?,email=? where id=?";			
    			IU.executeUpdate(sql, name, password, email, uid);
    			response.sendRedirect("list.jsp");
    	}
    }
    %>

</body>
</html>