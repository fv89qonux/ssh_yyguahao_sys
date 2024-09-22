<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<!-- head-->
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="css/div.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
    </script>
  </head>
  
  <!--body-->
 <body>
   <jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    

<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="right" class="right">
				<!-- 登录-->
				<div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span>用户登陆</span>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/userlogin.jsp"></jsp:include>
					</div>
				 </div>
				 <div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="<%=path %>/gonggaoAll.action">网站公告</a></span>
						</div>
					</div>
					<div class="Slot">
					    <s:action name="gonggaoQian5" executeResult="true"></s:action>
					</div>
				 </div>
				 <!-- 公告-->
				 <!-- 登录-->
				<div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span>日历表</span>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					</div>
				 </div>
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop">科室介绍</div>
					</div>
					<div class="Slot">
					    <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:2px">
						      <tr align="center" bgcolor="#FAFAF1" height="22">
							    <td width=10%>科室号</td>
								<td width=10%>科室名</td>
								<td width=70%>科室简介</td>
								<td width=10%>科室专家</td>
					          </tr>	
							<s:iterator value="#request.keshiList" id="keshi">
							  <tr align='left'>
									 <td bgcolor="#FFFFFF" width=10% align=center> <s:property value="#keshi.keshiId"/> </td>
									 <td bgcolor="#FFFFFF" width=10%  align=center> <s:property value="#keshi.keshiAnme"/> </td>
									 <td bgcolor="#FFFFFF" width=70%> <s:property value="#keshi.keshiJianjie"/> </td>
									 <td bgcolor="#FFFFFF" width=10%  align=center><a href="<%=path %>/yishengAll.action?keshiId=<s:property value="#keshi.keshiId"/>" > 
									  (<s:property value="#keshi.keshixiayisheng"/>&nbsp;&nbsp;人)</a></td>
							  </tr>
							</s:iterator>
						</table>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
</body>
</html>
