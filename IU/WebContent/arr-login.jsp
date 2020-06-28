<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="iu.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
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
	width: 250px;
	height: 86px;
	margin-top: 40px;
	margin-left: 80px;
	margin-bottom: 25px;
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
	margin-top: 40px;
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
<body id="ba"><%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String name1 = "Isabel";
    String password1 = "123456";
    	if(null != name){		
        if(null != password){
        	if(name.equals(name1)&&password.equals(password1)){
        	response.sendRedirect("list.jsp");
        }else{
        	out.print("您不是管理员");
        }
    }else{
    	out.print("账号或密码错误");
    }   
    	}
%>

<form>
<div id="div2"><h1>管理员登录</h1></div>
<div>
            <div id="bgDiv">
                <div id="login">
                    <img id="logoImg" src="iu/8.jpg"/>
                    <div id="username">
                        <img id="userImg" src="iu/4.jpg"/>
                        <input id="userInp"  name="name" type="text" placeholder="请输入用户名"/>
                    </div>
                    <div id="pwd">
                        <img id="pwdImg" src="iu/5.jpg"/>
                        <input id="pwdInp"  name="password" type="password" placeholder="请输入密码"/>
                    </div>
                    <button id="btn" type="submit">登录</button>
                </div>
            </div>
        </div>
</form>
</body>
</html>