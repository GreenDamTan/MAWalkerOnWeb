<%@page import="walker.SetConfig"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String Type = request.getParameter("Type");
	if (Type == null)Type = "";
	session.removeAttribute("username");
	session.removeAttribute("passwd");
	if (Type.equals("Submit")) {
	String username = request.getParameter("username");
	if (username == null) username = "";
	String passwd = request.getParameter("passwd");
	if (passwd == null) passwd = "";
	if(SetConfig.login(username, passwd)){
		session.setAttribute("username", username);
		out.print("<SCRIPT>window.location.href='option.jsp';</SCRIPT>");
	}else{
		out.print("<script>alert('用户名密码不对,请重新输入!');</script>");
	
	}
	
	
	
	}
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<link rel="stylesheet" type="text/css" href="css/table.css">
<style>td {font-size: 12px}body{margin: 0;padding: 0;background: #EFF7FF;FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#ffffff, EndColorStr=#ddeeff );}</style>

  <head>
    <base href="<%=basePath%>">
    
    <title>登陆MA</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body topmargin="0" leftmargin="0">
  <form action="index.jsp?Type=Submit" method="post" name="frm">
  	<table border="1" cellspacing="0" cellpadding="0" bordercolorlight="#ADBEEF" bordercolordark="#EFF7FF" width="97%" align=center style="width: 244px; height: 100px; margin:auto; vertical-align:middle" >
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td style="width: 60px; ">用户名</td>
  	<td style="width: 112px; "><input type="text" style="width: 154px; "  name="username" ></td> 	
  	
  	</tr>
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td style="width: 60px; ">密码</td>
  	<td style="width: 112px; "><input type="password" width=99%'   name="passwd" style="width: 154px; "></td> 	
  	
  	</tr>
  	
  	</tr>
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td style="width: 60px; " colspan="2" align="center"><input type="submit" align="middle" style="width: 93px; " value="登陆" ></td>
  	
  	</tr>
  	</table>
  
  
  </form>
    


  </body>
</html>
