<%@page import="iu.IU"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String s_id=request.getParameter("id");
    if (s_id != null) {
    	try{
    		int id=Integer.parseInt(s_id);
    		String sql="delete from fan where id=?";
    		iu.IU.executeUpdate(sql, id);
    		response.sendRedirect("list.jsp");
    	}catch(Exception e){
    		out.println("参数有误");
    	}
    }
%>
</body>
</html>