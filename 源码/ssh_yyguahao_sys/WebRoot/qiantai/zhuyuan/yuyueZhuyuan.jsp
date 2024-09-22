<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>预约看病</title>
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
               if(document.formAdd.shijianSize.value=="")
              {
                 alert("请输入住院时长");
                 return false;
              }
              document.formAdd.submit();
           }
        </script>
        
	</head>

	<body leftmargin="2" topmargin="9">
			<form action="<%=path %>/yuyueZhuyuan.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC">
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="30%" bgcolor="#FFFFFF" align="left">
						       预约时间：
						    </td>
						    <td width="70%" bgcolor="#FFFFFF" align="left">
					
                            <input name="shijian" type="text" id="shijian" size="10"
                           maxlength="10" onclick="new Calendar().show(this);" /></input>
                            <font color=gray>(xxxx年-xx月-xx日)</font>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="left">
						       住院时长：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type=text name="shijianSize" size="10"></text>&nbsp; &nbsp; 天
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="100%" bgcolor="#FFFFFF" align="left" colspan="2">
						       <input type="hidden" name="chuangweiId" value="<%=request.getParameter("chuangweiId") %>"/>
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>

