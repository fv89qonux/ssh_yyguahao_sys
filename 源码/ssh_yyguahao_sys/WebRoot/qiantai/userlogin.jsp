<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath(); /*获取当前web的根目录 */
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	        function reg()
	        {
	             var url="<%=path %>/userRegister.action";
			     window.open(url,"_self");
	        }
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("请输入用户名");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           document.userLogin.submit();
	        }
	        
	</script>
  </head>
  
  <body>
       <s:if test="#session.user==null">
			<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="100%" align="center">
			          <tr>
			            <td align="center" colspan="2" height="10"></td>
			          </tr>
			          
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">用户名：</td>
			            <td align="left" width=65%>
			              <input class="input" id="userName" title="用户名不能为空" size="11" name="userName" type="text" />
			            </td>
			          </tr>
			          
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">密　码：</td>
			            <td align="left">
			              <input class="input" title="密码不能为空" type="password" size="12" name="userPw"/>
			            </td>
			          </tr>
			          
			          <tr>
			            <td align="center" colspan="2" height="10">
			              <font color="red"><s:property value="#request.error"/></font>
			            </td>
			          </tr>
			          
			         <tr width=100%>
						<td  colspan=2 height="25">
						  <img src="img/login.gif" width="57" height="20" onClick="login()">&nbsp;&nbsp;&nbsp;&nbsp;
	                      <img src="img/reg.gif" width="57" height="20" onClick="reg()">
	                    </td>
				     </tr>
			      </table>
		    </form>
		    </s:if>
		    
		    <s:else>
		        <br/>
		           <!-- 访问Action值栈中的 栈顶属性 -->
			                        欢迎您：<s:property value="#session.user.userName"/> &nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="<%=path %>/userLogout.action">安全退出</a> &nbsp;&nbsp;&nbsp;&nbsp;
			    <br/><br/><br/>
			</s:else>
  </body>
</html>
