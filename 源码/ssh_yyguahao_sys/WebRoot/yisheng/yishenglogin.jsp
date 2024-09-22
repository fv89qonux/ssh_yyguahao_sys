<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath(); /*获取当前web的根目录 */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript">
	        function login()
	        {
	           if(document.yishengLogin.yishengName.value=="")
	           {
	               alert("请输入您的姓名");
	               return;
	           }
	           if(document.yishengLogin.yishengPw.value=="")
	           {
	               alert("请输入您的密码");
	               return;
	           }
	           document.yishengLogin.submit();
	        }
	        
	</script>
  </head>
  
  <body>
       <s:if test="#session.yisheng==null">
			<form action="<%=path %>/yishengLogin.action" name="yishengLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="10"></td>
			          </tr>
			          
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">医生名：</td>
			            <td align="left" >
			              <input class="input" id="yishengName" title="医生姓名不能为空" size="11" name="yishengName" type="text" />
			            </td>
			          </tr>
			          
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">密　码：</td>
			            <td align="left">
			              <input class="input" title="密码不能为空" type="password" size="12" name="yishengPw"/>
			            </td>
			          </tr>
			          
			          <tr>
			            <td align="center" colspan="2" height="10">
			              <font color="red"><s:property value="#request.error"/></font>
			            </td>
			          </tr>
			          
			         <tr>
						<td colspan=2 height="25"><div align="center"><img src="img/login.gif" width="57" height="20" onClick="login()"></div></td> 
				     </tr>
			      </table>
		    </form>
		    </s:if>
		    
		    <s:else>
		        <table width=100%>
		          <tr>
		            <td><img src="<%=path %>/img/<s:property value="#session.yisheng.yishengPhoto"/>"/></td>
		          </tr>
			      <tr>
			        <td align=center>欢迎医生：<s:property value="#session.yisheng.yishengName"/> &nbsp;&nbsp;&nbsp;&nbsp;
			        <a href="<%=path %>/yishengLogout.action">安全退出</a> </td>
			      </tr>
			    </table>
			</s:else>
  </body>
</html>
