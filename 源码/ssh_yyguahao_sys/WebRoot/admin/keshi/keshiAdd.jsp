<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        <script language="javascript">
        function check()
		    {
              if(document.formAdd.keshiAnme.value=="")
              {
                 alert("请输入科室名");
                 document.formAdd.keshiAnme.focus();
                 return false;
              }
                if(document.formAdd.keshiJianjie.value=="")
              {
                 alert("请输入科室简介");
                 document.formAdd.keshiJianjie.focus();
                 return false;
              }
               document.formAdd.submit();
		    }
		    
		    
        </script>
	</head>

	<body leftmargin="2" topmargin="2">
			<form action="<%=path %>/keshiAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="font-size:12px " >
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" align=center><span>【科室添加】</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         科室名称：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="keshiAnme" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        科室介绍：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <textarea  rows="10" cols="50" name="keshiJianjie"></textarea>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF"  height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
