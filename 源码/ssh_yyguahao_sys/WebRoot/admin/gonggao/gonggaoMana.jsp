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
           function gonggaoDetail(gonggaoId)
           {
                 var url="<%=path %>/gonggaoDetail.action?gonggaoId="+gonggaoId;
				 window.open(url,"main");
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" >
			<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" align="center" style="font-size:12px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" align=center>&nbsp;【公告目录】&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="25%">标题</td>
					<td width="25%">发布时间</td>
					<td width="25%">内容</td>
					<td width="25%">操作</td>
		        </tr>	
				<s:iterator value="#request.gonggaoList" id="gonggao">
				<tr align='center' bgcolor="#FFFFFF" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 <s:property value="#gonggao.gonggaoTitle"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#gonggao.gonggaoData"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <a href="#" onclick="gonggaoDetail(<s:property value="#gonggao.gonggaoId"/>)">查看内容</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="<%=path %>/gonggaoDel.action?gonggaoId=<s:property value="#gonggao.gonggaoId"/>">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
	</body>
</html>
