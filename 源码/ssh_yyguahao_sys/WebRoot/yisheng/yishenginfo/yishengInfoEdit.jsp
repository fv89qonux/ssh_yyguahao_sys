<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="css/div.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
        function check()
		    {
	            alert("医生个人信息修改成功"); 
		        document.form1.submit();//上传注册信息到action
		        var url="<%=path %>/yishengInfo.action" 
		       window.open(url,"_self");
		    }
		    
		       function closeOpen()
		    {
		        var url="<%=path %>/yishengInfo.action" 
		       window.open(url,"_self");
		    }  
    </script>
  </head>
  
<body>
<jsp:include flush="true" page="/yisheng/top.jsp"></jsp:include>    
	
<!--body-->
<div align="center" class="Wrapper">
   <div id="MainCenter" align="center" class="MainCenter">
	     <!-- right -->
	     <div id="right" class="right">
				<div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span>医生登陆</span>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/yisheng/yishenglogin.jsp"></jsp:include>
					</div>
				 </div>
				 
				 <div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="<%=path %>/gonggaoYishengAll.action">网站公告</a></span>
						</div>
					</div>
					<div class="Slot">
					    <s:action name="gonggaoYisheng5" executeResult="true"></s:action>
					</div>
				 </div>
				
				<div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span>日历表</span>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					</div>
				 </div>
		 </div>
		 <!-- left -->
	 	 <div id="content" class="Sub" >
			<div class="NewContainer">
				  <div class="BoxHeader">
						<div class="BoxHeader-center MarginTop">个人信息修改</div>
				  </div>
				  <div class="Slot">
					 <form action="<%=path %>/yishengSubmit.action" name="form1" method="post">
                        <table width="70%" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" style="margin-top:5px;margin-bottom:5px">
				         <tr>
						   <td width=15% height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							   &nbsp;
                               <img src="<%=path %>/img/${sessionScope.yisheng.yishengPhoto}"/>
						   </td>
						   <td  width=15px bgcolor="#FFFFFF"></td>
						   <td bgcolor="#FFFFFF"></td>
						   <td  width=30px bgcolor="#FFFFFF"></td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							     姓 名：
						   </td>
						   <td  bgcolor="#FFFFFF">
							   &nbsp;
                              <input type="text" name="yishengName" id="yishengName" value="${sessionScope.yisheng.yishengName }"/>
						   </td>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
						   	  密 码：
						   </td>
						   <td bgcolor="#FFFFFF">
							      &nbsp;
							   <input type="text" name="yishengPw" id="yishengPw" value="${sessionScope.yisheng.yishengPw }"/>
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							   医生ID号：
						   </td>
						   <td bgcolor="#FFFFFF">
							  &nbsp;
							   <input type="text" name="yishengId" id="yishengId" readonly="readonly"  value="${sessionScope.yisheng.yishengId }"/>
						   </td>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
						   	   年 龄：
						   </td>
					  	   <td bgcolor="#FFFFFF">
							  &nbsp;
							   <input type="text" name="yishengAge" id="yishengAge" value="${sessionScope.yisheng.yishengAge }"/>
						   </td>
					    </tr>
					    <tr>
						  <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							性 别：
						  </td>
						  <td colspan=3 bgcolor="#FFFFFF">
							&nbsp;
							 <s:if test="'${sessionScope.yisheng.yishengSex}'=='男'"> 
						        <input type="radio" name="yishengSex" value="男" checked/>男
						        &nbsp;&nbsp;&nbsp;&nbsp;
						        <input type="radio" name="yishengSex" value="女"/>女
						      </s:if>
						      <s:else>
						        <input type="radio" name="yishengSex" value="男" />男
						        &nbsp;&nbsp;&nbsp;&nbsp;
						        <input type="radio" name="yishengSex" value="女" checked/>女
						      </s:else>
					  	  </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							   职 称：
						   </td>
						   <td colspan=3 bgcolor="#FFFFFF">
							  &nbsp;
							   <input type="text" size=50 name="yishengZhicheng" id="yishengZhicheng" value="${sessionScope.yisheng.yishengZhicheng }"/>
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							  专 长：
						   </td>
						   <td colspan=3 bgcolor="#FFFFFF">
							  &nbsp;
							   <input type="text" size=50 name="yishengZhuanchang" id="yishengZhuanchang" value="${sessionScope.yisheng.yishengZhuanchang }"/>
						   </td>
					    </tr>
					    <tr>
						   <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
							  简 介：
						   </td>
						   <td colspan=3 bgcolor="#FFFFFF">
							  &nbsp;
							   <textarea rows="10" cols="50" name="yishengJianjie" id="yishengJianjie" >${sessionScope.yisheng.yishengJianjie }</textarea> 
						   </td>
					    </tr>
					    <tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td colspan=5 bgcolor="#FFFFFF">
							&nbsp;
							<input type="hidden" name="yishengId" value="${sessionScope.yisheng.yishengId }">
							<input type="hidden" name="keshiId" value="${sessionScope.yisheng.keshiId }">
							<input type="button" value="确定" onclick="check()"/>
							<input type="button" value="取消" onclick="closeOpen()"/>
						</td>
					    </tr>
				       </table>
			       </form>
                </div>
            </div>
		 </div>
    </div>
</div>
<!--body-->
	
</body>
</html>
