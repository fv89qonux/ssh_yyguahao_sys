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
           function chuangweiDel(chuangweiId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/chuangweiDel.action?chuangweiId="+chuangweiId;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2">
			<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" align="center" style="font-size:12px">
				<tr bgcolor="#EEF4EA">
					<td height="14" colspan="5" align=center>&nbsp;【床位管理】&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="20%">床位号</td>
					<td width="20%">床位类别</td>
					<td width="20%">床位价格</td>
					<td width="20%">床位剩余</td>
					<td width="20%">操作</td>
		        </tr>	
				<s:iterator value="#request.chuangweiList" id="chuangwei">
				<tr align='center' bgcolor="#FFFFFF" height="22">
					<td  bgcolor="#FFFFFF" align="center">
						<s:property value="#chuangwei.chuangweiId"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#chuangwei.chuangweiType"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#chuangwei.chuangweiPrice"/> /天
					</td>
					 <td bgcolor="#FFFFFF" align="center">
					    <s:property value="#chuangwei.chuangweiLast"/>
					</td> 
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="chuangweiDel(<s:property value="#chuangwei.chuangweiId"/>)">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
