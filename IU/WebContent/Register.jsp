<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="iu.*,java.sql.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>REGISTER</title>
<style type="text/css">
#ba{background-color:#996699;
	margin-left: auto;
	margin-right: auto;}
#login {
	width: 422px;
	height: 400px;
	background: #fff;
	margin-top: 50px;
	margin-left: 50px;
	/*float:left;*/
	position: relative;
	top: 40px;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
	border:6px solid #DDA0DD;
}
 
#logoImg {
	width: 170px;
	height: 50px;
	margin-top: 20px;
	margin-left: 140px;
	margin-bottom: 8px;
}
#username,
#pwd{
	width: 375px;
	height: 60px;
	border-bottom: 1px solid #efefef;
	margin: 0 28px;
	/*line-height:60px;*/
}
#userImg,
#pwdImg {
	margin-top: 18px;
	float: left;
	position: relative;
} 
#userInp,
#pwdInp {
	width: 320px;
	height: 25px;
	margin-top: 18px;
	border: none;
	outline: none;
	margin-left: 20px;
}
#btn {
	width: 364px;
	height: 40px;
	background: #DDA0DD;
	color: #FFFF99;
	font-size: 16px;
	font-weight: bold;
	margin-top: 20px;
	margin-left: 30px;
}
#div2{height: 20px;
    width: 500px;
    text-align: center;
    font-style: 黑体;
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
    color: #FFFF99;}
</style>
</head>
<body id="ba">
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String password2 = request.getParameter("password2");
String email = request.getParameter("email");
if(null != name){
	if(null != password && null != password2 && password.equals(password2)){
		String sql = "insert into fan(name,password,email)" +
			      "values('" + name + "','" + password 
			    	+ "','" + email + "')";
		
		int ret = IU.executeUpdate(sql);
		if(ret > 0) {
			response.sendRedirect("login.jsp");
		}else{
     		out.println("用户名已经被占用！");
		}	
	} else {
		out.println("两次密码输入不一致！");
	}
}
%>

<div id="div2"><h1>欢迎注册成为粉丝用户</h1></div>
<form action="Register.jsp" method="post">
            <div id="bgDiv">
                <div id="login">
                    <img id="logoImg" src="iu/7.jpg"/>
                    <div id="username">
                        <img id="userImg" src="iu/4.jpg"/>
                        <input id="userInp"  name="name" type="text" value="<%=name==null?"":name%>" placeholder="请输入用户名"/>
                    </div>
                    <div id="pwd">
                        <img id="pwdImg" src="iu/5.jpg"/>
                        <input id="pwdInp"  name="password" type="password" placeholder="请输入密码"/>
                    </div>
                    <div id="pwd">
                        <img id="pwdImg" src="iu/5.jpg"/>
                        <input id="pwdInp"  name="password2" type="password" placeholder="请再次输入密码"/>
                    </div>
                    <div id="pwd">
                        <img id="pwdImg" src="iu/6.jpg"/>
                        <input id="pwdInp"  name="email" type="text" placeholder="请输入邮箱"/>
                    </div>
                    <input id="btn" type="submit">
                </div>
            </div>
        </form>

</body>
</html>