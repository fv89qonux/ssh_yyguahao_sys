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
    <script language="JavaScript" type="text/javascript">
       function gotoEdit()
       {
            var url="<%=path %>/userXinxiEdit.action";
			     window.open(url,"_self");
       }    
    </script>
  </head>
  
<body>
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="right" class="right">
				
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
						<div class="BoxHeader-center MarginTop">用户个人信息</div>
					</div>
					<div class="Slot">
					  <table width="70%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:5px;margin-bottom:5px" >
					     <tr>
						   <td width=15% height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							     用户名：
						   </td>
						   <td width=85% bgcolor="#FFFFFF">
							   &nbsp;
                               <font style="font-size: 12px;">${sessionScope.user.userName }
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
						   	  密 码：
						   </td>
						   <td bgcolor="#FFFFFF">
							      &nbsp;
							   <font style="font-size: 12px;">${sessionScope.user.userPw }
						   </td>
					    </tr>
					 
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							   真实姓名：
						   </td>
						   <td bgcolor="#FFFFFF">
							  &nbsp;
							  <font style="font-size: 12px;">${sessionScope.user.userRealname }
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
						   	   住址：
						   </td>
					  	   <td bgcolor="#FFFFFF">
							  &nbsp;
							  <font style="font-size: 12px;">${sessionScope.user.userAddress }
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							   性别：
						   </td>
						   <td bgcolor="#FFFFFF">
							  &nbsp;
							  <font style="font-size: 12px;">${sessionScope.user.userSex }
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							   联系方式：
						   </td>
						   <td bgcolor="#FFFFFF">
							  &nbsp;
							  <font style="font-size: 12px;">${sessionScope.user.userTel }
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							  E-mail：
						   </td>
						   <td bgcolor="#FFFFFF">
							  &nbsp;
							  <font style="font-size: 12px;">${sessionScope.user.userEmail }
						   </td>
					    </tr>
				   	    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							  QQ：
						   </td>
						   <td bgcolor="#FFFFFF">
						   	  &nbsp;
							  <font style="font-size: 12px;">${sessionScope.user.userQq }
						   </td>
					    </tr>
					    <tr>
					       <td colspan=2 bgcolor="#FFFFFF" align=center>
					          <input type=button value=" 修改个人信息   "  onclick=gotoEdit() >
					       </td>
					    </input></tr>
					 </table>
                   </div>
			</div>
		 </div>
</div>
</div>
<!--body-->
	
</body>
</html>
