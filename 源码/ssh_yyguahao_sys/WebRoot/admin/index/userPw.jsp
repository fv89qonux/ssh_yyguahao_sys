<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        <script language="javascript">
            function check()
            {
                 var userPwReal=<s:property value="#session.admin.userPw"/>;
                 if(document.formPw.userPw1.value !=userPwReal)
                 {
                     alert("原密码不正确");
                     return ;
                 }
                 
                 if(document.formPw.userPw.value =="")
                 {
                     alert("新密码不能空");
                     return ;
                 }
                 if(document.formPw.userPw.value != document.formPw.userPw2.value)
                 {
                     alert("两次输入的密码不一致");
                     return ;
                 }
                  document.formPw.submit();
                  alert("密码修改成功！");
                  window.location.href="<%=path %>/admin/index/adminXinxi.jsp";
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="2">
			<form method="post"  name="formPw" action="<%=path %>/adminPwEdit.action">
			<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="font-size:12px ">
				<tr bgcolor="#EEF4EA">
				    <td colspan="2" align=center><span>【密码修改】</span></td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				         登录名：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input type="text" value=<s:property value="#session.admin.userName"/> name="userName" size="20" disabled="disabled"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        原密码：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input type="text" name="userPw1" id="userPw1" size="22"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				         新密码：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input type="password" id="userPw" name="userPw" size="22" />
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        确认密码：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				           <input type="password" name="userPw2" id="userPw2" size="22"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        &nbsp;
				    </td>
			        <td width="75%" bgcolor="#FFFFFF">
			        	<input type="hidden" name="userId" value="${sessionScope.admin.userId }">
			        	<input type="hidden" name="userName" value="${sessionScope.admin.userName}">
			             <input type="button" value="修改" onclick="check()"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="重置"/>
			        </td>
				</tr>
			</table>
			</form>
   </body>
</html>
