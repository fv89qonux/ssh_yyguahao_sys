<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
      <table width="100%">
	     <s:iterator value="#request.gonggaoList" id="gonggao">
	          <tr>
	             <td align="left">
	             <a href="<%=path %>/gonggaoYisheng.action?gonggaoId=<s:property value="#gonggao.gonggaoId"/>" >
	             <s:property value="#gonggao.gonggaoTitle"/>
	             </a>
	             </td>
	          </tr>
	     </s:iterator>
	  </table>
  </body>
</html>
