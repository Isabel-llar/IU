<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="iu.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DISCUSS</title>
<style type="text/css">
#ba{background-color:#996699;
	margin-left: auto;
	margin-right: auto;}
#login {
	width: 1200px;
	height: 600px;
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
#div2{height: 20px;
    width: 500px;
    text-align: center;
    font-style: 黑体;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
    color: #FFFF99;}
#div3{
	width: 1100px;
	height: 60px;
	border-bottom: 1px solid #efefef;
	margin: 0 28px;
	/*line-height:60px;*/
}
#div4{
	width: 1100px;
	height: 350px;
	border-bottom: 1px solid #efefef;
	margin: 0 28px;
	/*line-height:60px;*/
}
#div5{
	width: 300px;
	height: 50px;
	border-bottom: 1px solid #efefef;
	margin: 0 28px;
	/*line-height:60px;*/
}  
#u1{
	width: 1100px;
	height: 40px;
	margin-top: 18px;
	border: none;
	outline: none;
	margin-left: 20px;
}
#u2{
	width: 1100px;
	height: 300px;
	margin-top: 18px;
	border: none;
	outline: none;
	margin-left: 20px;
}
#u3{width: 300px;
	height: 30px;
	margin-top: 18px;
	border: none;
	outline: none;
	margin-left: 20px;}
#btn {
	width: 364px;
	height: 40px;
	background: #DDA0DD;
	color: #FFFF99;
	font-size: 16px;
	font-weight: bold;
	margin-top: 20px;
	margin-left: 420px;
}

</style>
</head>
<body id="ba">
<%
request.setCharacterEncoding("UTF-8");
String note_subject = request.getParameter("note_subject");
String note_content = request.getParameter("note_content");
String id = request.getParameter("id");
String name = request.getParameter("name");
if(null != note_subject && null != note_content && null!=id && null!=name){
		String sql = "insert into discuss(note_subject,note_content,id,name)" +
			      "values('" + note_subject + "','" + note_content 
			    	+ "','" + id + "','" + name + "')";		
		int ret = IU.executeUpdate(sql);
		if(ret > 0) {
			response.sendRedirect("Fans.jsp");
		}else{
     		out.println("此内容不能发送");
		}	
} 
%>
<div id="div2"><h1>发布你的个人动态</h1></div>
<form action="discuss.jsp" method="post">
                <div id="login">
                    <div id="div3">
                        <textarea rows="1" cols="1100" id="u1"  name="note_subject" type="text" value="<%=note_subject==null?"":note_subject%>" placeholder="请输入帖子主题"></textarea>
                    </div>
                    <div id="div4">
                        <textarea rows="10" cols="1100" id="u2"  name="note_content" type="text" placeholder="请输入帖子内容"></textarea>
                    </div>  
                     <div id="div5">
                        <input id="u3"  name="id" type="text" placeholder="请输入用户id" />
                    </div> 
                     <div id="div5">
                        <input id="u3"  name="name" type="text" placeholder="请输入用户名" />
                    </div>              
                    <input id="btn" type="submit">
                </div>
        </form>

</body>
</html>