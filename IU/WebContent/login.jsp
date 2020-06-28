<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="iu.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOGIN</title>
</head>
<body><%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if(null != name){
        Connection conn=IU.getConnection();
        String sql="select * from fan where name='"+name+"'"+
                    "and password='"+password+"'";     
        sql="select * from fan where name=? and password=?";       
        PreparedStatement pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, password);
        System.out.println("name:"+name);
        System.out.println("password:"+password);
        System.out.println("sql:"+sql);        
        ResultSet rs=pstmt.executeQuery();
        if(rs.next()){
            session.setAttribute("name", rs.getString("name"));
        	response.sendRedirect("Welcome.jsp");
        }else{
        	response.sendRedirect("index.jsp");
        }
        IU.close(pstmt);
        IU.close(conn);      
    }else{
    	response.sendRedirect("index.jsp");
    }   
%>

</body>
</html>