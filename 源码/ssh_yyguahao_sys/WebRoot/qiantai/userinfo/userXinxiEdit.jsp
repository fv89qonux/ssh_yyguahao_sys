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
        function check()
		    {
	            alert("用户信息修改成功"); 
		        document.form1.submit();//上传注册信息到action
		        var url="<%=path %>/userAll.action" 
		       window.open(url,"_self");
		    }
		    
		       function closeOpen()
		    {
		        var url="<%=path %>/userAll.action" 
		       window.open(url,"_self");
		    }  
    </script>
  </head>
  
<body>
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
	
<!--body-->
<div align="center" class="Wrapper">
   <div id="MainCenter" align="center" class="MainCenter">
	     <!-- right -->
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
		 <!-- left -->
	 	 <div id="content" class="Sub" >
			<div class="NewContainer">
				  <div class="BoxHeader">
						<div class="BoxHeader-center MarginTop">个人信息修改</div>
				  </div>
				  <div class="Slot">
					 <form action="<%=path %>/userEdit.action" name="form1" method="post">
                        <table width="60%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
				       	<tr>
						<td width="30%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*用户名：
						</td>
						<td width="70%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userName" id="userName" readonly="readonly"  value="${sessionScope.user.userName }"/>
						    <font color=gray size=2px>
						</td>
					
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*密 码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="userPw" value="${sessionScope.user.userPw }"/>
						</td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*真实姓名：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userRealname" value="${sessionScope.user.userRealname }"/>
						</td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							住址：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userAddress" value="${sessionScope.user.userAddress }"/>
						</td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							性别：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							 <s:if test="'${sessionScope.user.userSex}'=='男'"> 
						        <input type="radio" name="userSex" value="男" checked/>男
						        &nbsp;&nbsp;&nbsp;&nbsp;
						        <input type="radio" name="userSex" value="女"/>女
						      </s:if>
						      <s:else>
						        <input type="radio" name="userSex" value="男" />男
						        &nbsp;&nbsp;&nbsp;&nbsp;
						        <input type="radio" name="userSex" value="女" checked/>女
						      </s:else>
						</td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*联系方式：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userTel" value="${sessionScope.user.userTel }"/>
						</td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							E-mail：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userEmail" value="${sessionScope.user.userEmail }"/>
						</td>
				    	</tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							QQ：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userQq" value="${sessionScope.user.userQq }"/>
						</td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="hidden" name="userId" value="${sessionScope.user.userId }">
							<input type="button" value="确定" onclick="check()"/>
							<input type="button" value="取消" onclick="closeOpen()"/>
						</td>
					    </tr>
				       </table>
			       </form>
                </div>
            </div>
		 </div>
    </div>
</div>
<!--body-->
	
</body>
</html>
