<%@ page language="java" pageEncoding="UTF-8"%>
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
        <script language="javascript">
           function userDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?userId="+userId;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" >
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CBD8AC" align="center" style="font-size:12px">
				<tr bgcolor="#EEF4EA">
					<td height="14" colspan="10" align=center >&nbsp;【注册用户】&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">ID</td>
					<td width="5%">用户名</td>
					<td width="5%">密码</td>
					<td width="10%">真实姓名</td>
					<td width="20%">住址</td>
					<td width="5%">性别</td>
					<td width="10%">联系方式</td>
					<td width="15%">E-mail</td>
					<td width="10%">QQ</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.userList" id="user">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userId"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userPw"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userRealname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userAddress"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userEmail"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userQq"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="userDel(<s:property value="#user.userId"/>)" >删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
