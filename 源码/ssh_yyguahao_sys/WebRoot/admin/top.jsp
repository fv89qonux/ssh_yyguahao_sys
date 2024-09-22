<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>
<HTML>
	<HEAD>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
	    <script  src ="<%=path %>/js/dropdown.js" type ="text/javascript" ></script> 
		
		<STYLE type=text/css>
          .top{color:white}
          * {font-size: 12px;font-family: "宋体";}
		</STYLE>
	</HEAD>

	<BODY text=#000000 bgColor=#ffffff leftMargin=185px rightmargin=190px topMargin=0>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TR><td align=center><img src="<%=path %>/img/admintop.jpg"/></td></TR>
				<TR>
					<TD>
						<TABLE height=20px cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
								    <TD align=right bgColor=#125488 class=top>
								                        欢迎您：系统管理员&nbsp;[<s:property value="#session.admin.userName"/>]
								       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT>
                                       <SPAN id=clock></SPAN>&nbsp;&nbsp;&nbsp;
                                    </TD>
                                </TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
</HTML>
