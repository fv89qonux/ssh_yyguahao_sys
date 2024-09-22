<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.page import="java.text.SimpleDateFormat"/>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<meta  http-equiv ="Content-Type"  content ="text/html; charset=gb2312" >   
       
         <script  src ="<%=path %>/js/Calendar3.js" type ="text/javascript" ></script> 
         
         <script type="text/javascript">
           function check()
           {
             
              if(document.formAdd.shijian.value=="")
              {
                 alert("请输入预约时间");
                 return false;
              }
               if(document.formAdd.beizhu.value=="")
              {
                 alert("请输入病情描述");
                 return false;
              }
          document.formAdd.submit();
           }
        </script>
        
	</head>

	<body leftmargin="2" topmargin="9">
			<form action="<%=path %>/yuyueAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC">
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="30%" bgcolor="#FFFFFF" align="left">
						       预约时间:
						    </td>
						    <td width="70%" bgcolor="#FFFFFF" align="left">
					
                            <input name="shijian" type="text" id="control_date" size="10"
                           maxlength="10" onclick="new Calendar().show(this);" /></input>
                            <font color=gray>(xxxx年-xx月-xx日)</font>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="left">
						       病情：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <textarea rows="10" cols="50" name="beizhu"></textarea>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="100%" bgcolor="#FFFFFF" align="left" colspan="2">
						       <input type="hidden" name="yishengId" value="<%=request.getParameter("yishengId") %>"/>
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
