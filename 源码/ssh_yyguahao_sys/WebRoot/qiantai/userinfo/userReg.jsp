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
    <script language="javascript">
             
		     function closeOpen()
		    {
		       var url="<%=path %>/qiantai/default.jsp" 
		      window.open(url,"_self");
		    }
		   
		    function check1()
		    {
		        if(document.form1.userName.value=="")
		        {
		            alert("请输入用户名");
		            return false;
		        }
		        if(document.form1.userPw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        if(document.form1.userPw.value!=document.form1.userPw1.value)
		        {
		            alert("两次密码不一致");
		            return false;
		        }
		        if(document.form1.userRealname.value=="")
		        {
		            alert("请输入真实姓名");
		            return false;
		        }
		        if(document.form1.userTel.value=="")
		        {
		            alert("请输入联系方式");
		            return false;
		        }
		          if(document.form1.userTel.value.length!=11)
		        {
		            alert("联系方式的格式错误");
		            return false;
		        }
	            alert("用户注册成功");
		        document.form1.submit();//上传注册信息到action
		         var url="<%=path %>/qiantai/default.jsp" 
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
						<div class="BoxHeader-center MarginTop">用户注册</div>
					</div>
					<div class="Slot">
					  <form action="<%=path %>/userReg.action" name="form1" method="post">
				<table width="60%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<td width="30%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*用户名：
						</td>
						<td width="70%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userName" id="userName"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*密 码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="userPw"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*密码确认：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="userPw1"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*真实姓名：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userRealname"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							住址：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userAddress"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							性别：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="radio" name="userSex" value="男" checked="checked"/>男
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="userSex" value="女"/>女
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*联系方式：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userTel"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							*E-mail：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
					 	<input type="text" name="userEmail"/>
							<!--	<select name="userEmail1"> 
			                  <option value="">--请选择邮箱域名--</option>   
			                  <option value="@qq.com">@qq.com</option>                
                              <option value="@yahoo.cn">@yahoo.cn</option>              
                              <option value="@yahoo.com">@yahoo.com</option>              
                              <option value="@yahoo.com.cn">@yahoo.com.cn</option>              
                              <option value="@sina.com.cn">@sina.com.cn</option>              
                              <option value="@163.com.cn">@163.com.cn</option>              
                              <option value="@hotmail.cn">@hotmail.cn</option>              
                              <option value="@gmial.com.cn">@gmial.com.cn</option>             
                            </select>     -->       
                           
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							QQ：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userQq"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="button" value="确定" onclick="check1();"/>
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
		