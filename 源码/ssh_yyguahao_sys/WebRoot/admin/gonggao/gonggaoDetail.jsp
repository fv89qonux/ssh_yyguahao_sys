<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/div.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
        <table align="center" style="font-size:12px">
            <tr>
               <td align=center>
                  <s:property value="#request.gonggao.gonggaoTitle" escape="false"/>
               </td>
             </tr>
         </table>
         <table>
             <tr> <font>----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</font>
             </tr>
             <tr>
               <td>
                  <s:property value="#request.gonggao.gonggaoContent" escape="false"/>
               </td>
             </tr>
          </table>
          <table>
             <tr> <font>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</font>
             </tr>
             <tr>
               <td align=right>
                  <s:property value="#request.gonggao.gonggaoData" escape="false"/>
               </td>
             </tr>
      </table>
  </body>
</html>
