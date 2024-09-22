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
        </script>
	</head>

	<body leftmargin="2" topmargin="2" >
			<form action="<%=path %>/yishengAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="font-size:12px ">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" align=center><span>【专家添加】</span></td>
					    </tr>
					    <tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         上传照片：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input name="yishengPhoto" type="file" size="40" />       
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="yishengName" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        性别：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="radio" name="yishengSex" value="男" checked="checked"/>男
						        &nbsp;&nbsp;&nbsp;&nbsp;
						        <input type="radio" name="yishengSex" value="女"/>女
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         年龄：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="yishengAge" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         职称：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="yishengZhicheng" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         专长：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="yishengZhuanchang" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        科室：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <table border="0">
						           <tr> 
						               <td>  
								          <select width=10px name="keshiId">
								                  <option value="0" selected>---请选择科室---</option>
								                  <s:iterator value="#request.keshiList" id="keshi">
                                                  <option value=<s:property value="#keshi.keshiId"/> label=<s:property value="#keshi.keshiAnme"/>>
                                                  </option>
                                                  </s:iterator>
                                          </select>
                                              
						               </td>
						           </tr>
						        </table>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        简介：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <textarea  rows="10" cols="50" name="yishengJianjie"></textarea>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="提交" />&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
