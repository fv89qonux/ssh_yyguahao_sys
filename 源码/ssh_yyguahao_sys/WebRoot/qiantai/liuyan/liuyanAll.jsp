<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	 
	    <STYLE type=text/css>
        .tpt { FONT-SIZE: 9pt; COLOR: #666666; LINE-HEIGHT: 150%; BORDER-RIGHT: 0px #003300;}
		</STYLE>
		
		<script language="javascript">
		     function check()
		    {
		      if(document.LiuyanForm.liuyanTitle.value=="")
			  {
			 	alert("您还未填写留言标题");
				document.LiuyanForm.liuyanTitle.focus();
				return false;
			  }
			 if(document.LiuyanForm.liuyanContent.value=="")
			  {
			 	alert("内容不能为空");
				document.LiuyanForm.liuyanContent.focus();
				return false;
			  }
			 document.LiuyanForm.submit();
		    }
		   
        </script>
	</head>
	

	<BODY>
    <div>
	<TABLE cellSpacing=0 cellPadding=3 width="73%" align=center border=0 >
		<tr colspan=2>
		     <td height="200" colspan=2 align="center" ><img src=<%=path %>/img/userLiuyan.jpg></td>
		</tr>     
	    <tr bgcolor="#3d8480" colspan=2> 
		     <td height="25" colspan=2 align="left"  style="font-size:13px;" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			 <a  style="text-decoration:none" href="<%=path %>/qiantai/default.jsp">
			 <font color="white">返回首页</font></a>&nbsp;&nbsp;&nbsp;<font color="white">|</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <font color="white">【用户留言页面】</font>
	    </tr>
	    <!-- 只要留言表里不空，遍历循环显示留言信息-->  
		<s:iterator value="#request.liuyanList" id="liuyan">
		   <tr>
			<td>
				<table class=tpt width="100%">
					<tbody>
						<tr bgColor=#F0F0F0	>
							<td align=middle width="10%">
								<strong>留言人：</strong>
							</td>
							<td width="47%">
								<font color=#000000>&nbsp;<s:property value="#liuyan.liuyanUser"/></FONT>
							</td>
							<td align=middle width="14%">
								<strong>留言时间：</strong>
							</td>
							<td width="29%">
								<font color=#7B7B7B>&nbsp;<s:property value="#liuyan.liuyanDate"/></FONT>
							</td>
						</tr>
						<tr>
							<td align=middle>
								<strong>【标题】：</strong>
							</td>
							<td colSpan=3>
								<font color=#000000>&nbsp;<s:property value="#liuyan.liuyanTitle"/></font>
							</td>
						</tr>
						<tr>
							<td vAlign=top align=middle>
								<strong>【内容】：</strong>
							</td>
							<td colSpan=3>
								<s:property value="#liuyan.liuyanContent" escape="false"/>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
      </s:iterator>
	</TABLE>
	
	<BR>
	   <form name="LiuyanForm" action="<%=path %>/liuyanAdd.action" method="post">
	    <table border=0 align=center width=50%>
	      <tr bgColor=#F0F0F0>
	         <td style="font-size: 12px;" width="10%">标题</td>
		     <td width="90%" ><input type="text" name="liuyanTitle" size="100"/></td>
		  </tr>
		  <tr bgColor=#F0F0F0>
		     <td style="font-size: 12px;" >内容</td>
		     <td  style="font-size: 12px;" bgcolor="#FFFFFF" align="left">
			       <textarea rows="10" cols="75" name="liuyanContent">主题：</textarea>
		     </td>
		  </tr>
		  <tr>
		     <td style="font-size: 11px;">&nbsp;</td>
		     <td align=center >
		         <input type="button" value=" 提交留言   " onclick="check()">
             </td>
		 </tr>
		</table>
	   </form>
	 </div>
	</BODY>
</html>
