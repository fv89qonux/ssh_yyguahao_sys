<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="css/div.css" rel="stylesheet" type="text/css" />
  </head>
  
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
				 <!-- 公告-->
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
						<div class="BoxHeader-center MarginTop">公告详情</div>
					</div>
					<div class="Slot">
						<table width="100%" border="0">
						    <tr>
						       <td align="center"><s:property value="#request.gonggao.gonggaoTitle"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr></td>
						    </tr>
						    <tr>
						       <td align="center"><s:property value="#request.gonggao.gonggaoContent" escape="false"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr></td>
						    </tr>
						    <tr>
						       <td align="right"><s:property value="#request.gonggao.gonggaoData"/></td>
						    </tr>
						</table>
                    </div>
				</div>
		 </div>
</div>
</div>
	
</body>
</html>
