<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        <link href="css/div.css" rel="stylesheet" type="text/css" />
	</head>

	<body leftmargin="2" topmargin="2">
	    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="font-size:12px ">
		  <tr bgcolor="#EEF4EA">
		    <td colspan="2" align=center><span>【管理员的个人基本信息】</span></td>
		  </tr>
		  <tr bgcolor="#FFFFFF">
		    <td width="25%" bgcolor="#FFFFFF" align="right">管理员姓名：</td>
		    <td><s:property value="#session.admin.userName"/></td>
		  </tr>
		  <tr bgcolor="#FFFFFF">
		    <td width="25%" bgcolor="#FFFFFF" align="right">管理员密码：</td>
		    <td><s:property value="#session.admin.userPw"/></td>
		  </tr>
		  <tr bgcolor="#FFFFFF">
		    <td width="25%" bgcolor="#FFFFFF" align="right">管理员编号：</td>
		    <td><s:property value="#session.admin.userId"/></td>
		  </tr>
		</table>
	</body>
</html>
