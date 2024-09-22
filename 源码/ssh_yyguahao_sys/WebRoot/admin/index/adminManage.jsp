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
           function adminDel(userId)
           {
               if(confirm('确定删除吗？'))
               {
                   window.location.href="<%=path %>/adminDel.action?userId="+userId;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2">
			<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#D1DDAA" align="center" style="font-size:12px" >
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" bgcolor="#EEF4EA" align=center>&nbsp;【管理员删除】&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="25%">ID</td>
					<td width="25%">用户名</td>
					<td width="25%">密码</td>
					<td width="25%">删除操作</td>
		        </tr>	
				<s:iterator value="#request.adminList" id="admin">
				<tr align='center' bgcolor="#FFFFFF" height="22">
					<td width="25%" bgcolor="#FFFFFF" align="center">
						<s:property value="#admin.userId"/>
					</td>
					<td width="25%" bgcolor="#FFFFFF" align="center">
						<s:property value="#admin.userName"/>
					</td>
					<td width="25%" bgcolor="#FFFFFF" align="center">
					    <s:property value="#admin.userPw"/>
					</td>
					<td width="25%" bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="adminDel(<s:property value="#admin.userId"/>)">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
	</body>
</html>
