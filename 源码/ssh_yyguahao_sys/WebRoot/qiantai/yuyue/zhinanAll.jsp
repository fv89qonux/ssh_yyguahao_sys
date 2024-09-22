<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="css/div.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
    </script>
  </head>
  
<body>
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="right" class="right">
				
				<div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span>用户登陆</span>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/userlogin.jsp"></jsp:include>
					</div>
				 </div>
				 
				 <div class="GreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="<%=path %>/gonggaoAll.action">网站公告</a></span>
						</div>
					</div>
					<div class="Slot">
					    <s:action name="gonggaoQian5" executeResult="true"></s:action>
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
		 
	 	 <div id="content" class="Sub">
				<div class="NewContainer">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop">指南导航</div>
					</div>
					<div class="Slot">
					  <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:5px;margin-bottom:5px" >
					   <tr>
					       <td align=center width=20% bgcolor="#F9F9F9">【专家预约指南】</td>
					       <td bgcolor="white"><br>第一步：先输入用户名和密码，成功登录；<br>第二步：进入【科室专家】页面；<br>第三步：根据自己的病情，点击相应科室，进入【专家预约】页面进行预约；<br>第四步：在相应专家的操作栏的预约按钮，进行预约操作（预约后等待医生审核，通过后方可前来就诊！）。<br><font color=red>注意：每位专家每天最多限约5人，每人每天不能重复预约！</font><br><font></td>
					   </tr>
					    <tr>
					       <td align=center bgcolor="#F9F9F9">【住院预约指南】</td>
					       <td bgcolor="white"><br>第一步：先输入用户名和密码，成功登录；<br>第二步：进入【住院床位】页面；<br>第三步：点击相应床位的操作栏的预约按钮，选择预约时间和住院天数；<br>第四步：确认无误后，可点击【提交】，成功预约。<br></td>
					   </tr>
					     <tr>
					       <td  align=center bgcolor="#F9F9F9">【用户注册指南】</td>
					       <td bgcolor="white"><br>第一步：在网页右侧点击【注册】按钮；<br>第二步：进入【用户注册】页面；<br>第三步：填写个人信息时，注意两次密码一定要一致，电话号码的位数和邮箱格式要正确；<br>第四步：注册信息填写无误后，点击【确定】提交信息。<br></td>
					   </tr>
					   <tr>
					       <td  align=center bgcolor="#F9F9F9" > <font color=red>*注意事项</td>
					       <td bgcolor="white"><br>1、网上预约挂号不收取手续费，挂号费及诊金收费标准与现场挂号相同。<br>2、为保证您准时就诊，请于就诊当日提前到门诊大厅取号，逾期作废。<br>3、专家门诊资源有限，如预约成功后因故确定不能按时就诊，请务必于就诊日前一天取消预约。<br>4、您的专家预约情况、住院预约详情均可在【预约记录】里查看。<br></td>
					   </tr>
					 </table>
                   </div>
			</div>
		 </div>
</div>
</div>
<!--body-->
	
</body>
</html>
