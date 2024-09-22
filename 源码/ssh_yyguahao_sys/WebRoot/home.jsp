<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
     </script>
  </head>
  
  <body leftmargin="10" topmargin="10">
  <table><tr height=40px></tr></table>
    <table align=center  bordertop=10 width="59%"  height="95%" border="0" cellspacing="0" cellpadding="0"  
           style="background-image:url(<%=path %>/img/homeBg.jpg); background-repeat:no-repeat;"   >
      <tr height=50%></tr>
	  <tr>
	     <td align=center><a href="<%=path %>/index.action" target="_blank"> <img src="<%=path %>/img/goyuyue.jpg" border="0"></a></td>
	     <td align=center><a href="<%=path %>/yishengindex.action" target="_blank"> <img src="<%=path %>/img/godoc.jpg" border="0"></a></td>
	     <td align=center><a href="<%=path %>/admin/login.jsp" target="_blank"> <img src="<%=path %>/img/goback.jpg" border="0"></a></td>
	     <td width=20%></td>
	  </tr>	 
	   <tr height=20%></tr>
    </table>
  
  </body>
</html>
