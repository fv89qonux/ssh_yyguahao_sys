<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 后台登陆界面 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script language="javascript">
		 function denglu()
		 {                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				return false;
			 }
			  document.ThisForm.submit();
		 }
     </script>
  </head>
  
  <body>
   <form name="ThisForm" method="POST" action="<%=path %>/adminLogin.action">
    <table><tr height=40px></tr></table>
    <table align=center  bordertop=10 width="59%"  height="95%" border="0" cellspacing="0" cellpadding="0"  
           style="background-image:url(<%=path %>/img/loginbg.jpg); background-repeat:no-repeat;">
      <tr height=50%></tr>
	  <tr>
	     <td width =40%></td> 
	     <td align=center>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
				<tr width=20%>
					<td width="60" height="24"><div align="right"><span style="font-size:12px">用户:</span></div></td>
					<td width="10" valign="bottom">&nbsp;</td>
				    <td height="24" colspan="2">
						<div align="left">
							 <input type="text" name="userName" id="textfield" style="width:100px; height:17px; border:solid 1px #153966; font-size:12px; ">
						</div>
					</td>
			    </tr>
                <tr>
					<td height="24"><div align="right"><span style="font-size:12px">密码:</span></div></td>
					<td width="10" valign="bottom">&nbsp;</td>
					<td height="24" colspan="2"><input type="password" name="userPw" id="textfield2" style="width:100px; height:17px; border:solid 1px #153966; font-size:12px; "></td>
				</tr>
				<tr></tr>
            </table>
         </td>
	     <td align=center>
            <form name="login">
                   <table width="100%" border="0" cellspacing="0" cellpadding="0">
					 <tr width=20%>
				       <td height="25" valign="top"><div align="center"><input type=button width="57" height="20" onClick="denglu()" value=" 登陆 "></div></td>
				     </tr>
				     <tr>
					   <td height="25" valign="bottom"><div align="center"><input type=reset width="57" height="20" value=" 重置 "> </div></td>
				     </tr>
				     <tr></tr>
                   </table>
             </form>
         </td>
	     <td width =30%></td>
	  </tr>
	  <tr height=20%></tr>
    </table>
   </form>
  </body>
</html>
