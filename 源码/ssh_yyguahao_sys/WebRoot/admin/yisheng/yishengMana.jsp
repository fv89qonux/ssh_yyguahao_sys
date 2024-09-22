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
           function yishengDel(yishengId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/yishengDel.action?yishengId="+yishengId;
               }
           }
           function yishengEditPre(yishengId)
           {
                   window.location.href="<%=path %>/yishengEditPre.action?yishengId="+yishengId;
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2">
			<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" align="center" style="font-size:12px">
				<tr bgcolor="#EEF4EA">
					<td height="14" colspan="9" align=center>&nbsp;【专家管理】&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width=8%>姓名</td>
					<td width=8%>密码</td>
					<td >性别</td>
					<td >年龄</td>
					<td  width=10%>职称</td>
					<td width=8% >专长</td>
					<td width=40%>医生简介</td>
					<td width=5%>科室</td>
					<td width=12%>操作</td>
		        </tr>	
				<s:iterator value="#request.yishengList" id="yisheng">
				<tr align='center' bgcolor="#FFFFFF" height="22">
					<td  bgcolor="#FFFFFF" align="center">
						<s:property value="#yisheng.yishengName"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.yishengPw"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.yishengSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.yishengAge"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.yishengZhicheng"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.yishengZhuanchang"/>
					</td>
					 <td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.yishengJianjie"/>
					</td> 
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yisheng.keshiName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="yishengDel(<s:property value="#yisheng.yishengId"/>)">删除</a>
					    <a href="#" onclick="yishengEditPre(<s:property value="#yisheng.yishengId"/>)" >编辑</a> 
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
