<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = path+"/liuyanMana.action";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	  <base href="<%=basePath%>"/>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<STYLE type=text/css>
        .tpt { FONT-SIZE: 9pt; COLOR: #666666; LINE-HEIGHT: 150%; BORDER-RIGHT: 0px #003300;}
		</STYLE>
	</head>

	<BODY>
    <div>
		<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0 style="font-size:12px">
		    <TR bgcolor="#EEF4EA">
			     <TD height="14"  align=center colspan="4">&nbsp;【留言管理】&nbsp;</td>
		    </TR>
			<s:iterator value="#request.liuyanList" id="liuyan">
					<TABLE class=tpt width="100%" border=0>
					        
							<TR bgColor=#F0F0F0>
								<TD align=middle width="10%">
									<STRONG>留言人：</STRONG>
								</TD>
								<TD width="47%">
									<FONT color=#000000>&nbsp;<s:property value="#liuyan.liuyanUser"/></FONT>
								</TD>
								<TD align=middle width="14%">
									<STRONG>留言时间：</STRONG>
								</TD>
								<TD width="29%">
									<FONT color=#000000>&nbsp;<s:property value="#liuyan.liuyanDate"/></FONT>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="<%=path %>/liuyanDel.action?liuyanId=<s:property value="#liuyan.liuyanId"/>">删除</a>
								</TD>
							</TR>
							<TR>
								<TD align=middle>
									<STRONG>标题：</STRONG>
								</TD>
								<TD>
									<FONT color=#000000>&nbsp;<s:property value="#liuyan.liuyanTitle"/></FONT>
								</TD>
							</TR>
							<TR>
								<TD align=middle>
									<STRONG>内容：</STRONG>
								</TD>
								<TD>
									<s:property value="#liuyan.liuyanContent" escape="false"/>
								</TD>
								<TD></TD>
								<TD align=center>
								
								</TD>
							</TR>
					</TABLE>
				</TD>
			</TR>
			</s:iterator>
		</TABLE>
	</div>
	</BODY>
</html>
