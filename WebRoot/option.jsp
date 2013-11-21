<%@page import="walker.WalkerRun"%>
<%@page import="walker.Go"%>
<%@page import="walker.SetConfig"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String Type = request.getParameter("Type");
	String username=(String)session.getAttribute("username");
	WalkerRun wr = new WalkerRun();
	String[] args = {username+".xml"};
	wr.run(args);
	
//	WalkerRun wr2 = new WalkerRun();
	//args[0] = "kevinkbja.xml";
	//wr2.run(args);
	

	
	
	
	
	
	
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<link rel="stylesheet" type="text/css" href="css/table.css">
<style>td {font-size: 12px}body{margin: 0;padding: 0;background: #EFF7FF;FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#ffffff, EndColorStr=#ddeeff );}</style>

  <head>
    <base href="<%=basePath%>">
    
    <title>选项</title>
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
  	<table border="1" cellspacing="0" cellpadding="0" bordercolorlight="#ADBEEF" bordercolordark="#EFF7FF" width="97%" align=center style="margin:auto; vertical-align:middle; width: 827px" >
  	<tr height=20><td width="90%" colspan="8" bgcolor="#FAFDD9"><b>战斗设置</b></td></tr>
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">优先强敌战</td>
  	<td width="50px"><select name="fairy_battle_first">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">BC不足强敌卡组时是否继续跑图</td>
  	<td width="50px"><select name="allow_bc_insuffient">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">跑固定AP的图</td>
  	<td width="50px"><select name="this_ap_only">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">自动加点</td>
  	<td width="50px"><select name="auto_add_point">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	</tr>
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">允许打同一个怪</td>
  	<td width="50px"><select name="allow_attack_same_fairy">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">夜间模式</td>
  	<td width="50px"><select name="night_mode">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">自动收赞收礼物</td>
  	<td width="50px"><select name="receive_battle_present">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px" colspan="2">&nbsp;</td></tr>
  	
  	
  	<tr height=20><td width="90%" colspan="8" bgcolor="#FAFDD9"><b>药水设置</b></td></tr>
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">自动喝AP</td>
  	<td width="50px"><select name="auto_use_ap">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">AP低于此值喝药</td>
  	<td width="50px"><input name="ap_low">
  	</td>
  	<td width="100px">喝药方式</td>
  	<td width="50px"><select name="ap_half">
  	<option value="0">只吃全药</option>
  	<option value="1">只吃半药</option>
  	<option value="2">两种都吃</option>
  	</td>
  	<td width="100px">保留全药量</td>
  	<td width="50px"><input name="ap_full_low">
  	</td>
  	</tr>
  	
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">自动喝BC</td>
  	<td width="50px"><select name="auto_use_bc">
  	<option value="0">否</option>
  	<option value="1">是</option>
  	</td>
  	<td width="100px">BC低于此值喝药</td>
  	<td width="50px"><input name="">
  	</td>
  	<td width="100px">喝药方式</td>
  	<td width="50px"><select name="bc_half">
  	<option value="0">只吃全药</option>
  	<option value="1">只吃半药</option>
  	<option value="2">两种都吃</option>
  	</td>
  	<td width="100px">保留全药量</td>
  	<td width="50px"><input name="bc_full_low">
  	</td>
  	</tr>
  	
  	<tr height=20><td width="90%" colspan="8" bgcolor="#FAFDD9"><b>卡组设置</b></td></tr>
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">强敌卡组编号</td>
  	
  	<td width="50px"><select name="fairy_battle_first">
  	<option value="0">卡组1</option>
  	<option value="1">卡组2</option>
  	<option value="2">卡组3</option>
  	<option value="3">推荐</option>
  	</td>
  	<td width="100px">BC消耗</td>
  	<td width="50px"><input name=""></td>
  	
  	<td width="100px">觉醒卡组编号</td>
  	
  	<td width="50px"><select name="fairy_battle_first">
  	<option value="0">卡组1</option>
  	<option value="1">卡组2</option>
  	<option value="2">卡组3</option>
  	<option value="3">推荐</option>
  	</td>
  	<td width="100px">BC消耗</td>
  	<td width="50px"><input name=""></td></tr>
  	
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">好友强敌卡组编号</td>
  	
  	<td width="50px"><select name="fairy_battle_first">
  	<option value="0">卡组1</option>
  	<option value="1">卡组2</option>
  	<option value="2">卡组3</option>
  	<option value="3">推荐</option>
  	</td>
  	<td width="100px">BC消耗</td>
  	<td width="50px"><input name=""></td>
  	
  	<td width="100px">好友觉醒卡组编号</td>
  	
  	<td width="50px"><select name="fairy_battle_first">
  	<option value="0">卡组1</option>
  	<option value="1">卡组2</option>
  	<option value="2">卡组3</option>
  	<option value="3">推荐</option>
  	</td>
  	<td width="100px">BC消耗</td>
  	<td width="50px"><input name=""></td></tr>
  	
  	<tr valign=middle height=20 style="width: 625px; ">
  	<td width="100px">外敌卡组编号</td>
  	
  	<td width="50px"><select name="fairy_battle_first">
  	<option value="0">卡组1</option>
  	<option value="1">卡组2</option>
  	<option value="2">卡组3</option>
  	<option value="3">推荐</option>
  	</td>
  	<td width="100px">BC消耗</td>
  	<td width="50px"><input name=""></td>
  	<td width="100px" colspan="1" align="center"><input type="button" value="启动" ></td>
  	<td width="100px" colspan="1" align="center"><input type="button" value="停止" ></td>
  	<td width="100px" colspan="2" align="center"><input type="button" value="运行日志查看" ></td>
  	
  	
  	
  	</tr>
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	</table>
  
  
  </form>
    


  </body>
</html>
