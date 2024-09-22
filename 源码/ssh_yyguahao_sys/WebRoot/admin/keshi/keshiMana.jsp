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
           function keshiDel(keshiId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/keshiDel.action?keshiId="+keshiId;
               }
           }
           
           function keshiEditPre(keshiId)
           {
                   window.location.href="<%=path %>/keshiEditPre.action?keshiId="+keshiId;
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2">
			<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CBD8AC" style="font-size:12px">
				<tr bgcolor="#EEF4EA">
					<td height="14"  align=center colspan="4">&nbsp;【科室管理】&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">ID</td>
					<td width="10%">科室名称</td>
					<td width="60%">科室介绍</td>
					<td width="20%">操作</td>
		        </tr>	
				<s:iterator value="#request.keshiList" id="keshi">
				<tr align='center' bgcolor="#FFFFFF" height="22">
					<td width="10%" bgcolor="#FFFFFF" align="center">
						<s:property value="#keshi.keshiId"/>
					</td>
					<td width="10%" bgcolor="#FFFFFF" align="center">
						<s:property value="#keshi.keshiAnme"/>
					</td>
					<td width="60%" bgcolor="#FFFFFF">
					    <s:property value="#keshi.keshiJianjie" escape="false"/>
					</td>
					<td width="20%" bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="keshiDel(<s:property value="#keshi.keshiId"/>)">删除</a>
					   <a href="#" onclick="keshiEditPre(<s:property value="#keshi.keshiId"/>)">编辑</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
