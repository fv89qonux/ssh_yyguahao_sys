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
       function yuyueZhuyuanDelMy(id)
       {
            var url="<%=path %>/yuyueZhuyuanDelMy.action?id="+id;
            window.location.href=url;
       }
    </script>
  </head>
  
<body>

<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    


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
						<div class="BoxHeader-center MarginTop">我的住院预约</div>
					</div>
					<div class="Slot">
						<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
							<tr align="center" bgcolor="#FAFAF1" height="22">
								<td width="20%">预约时间</td>
								<td width="15%">预约床位ID</td>
								<td width="20%">住院时长</td>
								<td width="15%">床位类型</td>
								<td width="15%">床位价格</td>
								<td width="15%">操作</td>
					        </tr>	
							<s:iterator value="#request.yuyueZhuyuanList" id="yuyueZhuyuan">
							<tr align='center' bgcolor="#FFFFFF" height="22">
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyueZhuyuan.shijian"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyueZhuyuan.chuangweiId"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyueZhuyuan.chuangweiType"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyueZhuyuan.shijianSize"/>天
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyueZhuyuan.chuangweiPrice"/>/天
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <a href="#" onclick="yuyueZhuyuanDelMy(<s:property value="#yuyueZhuyuan.id"/>)">退床</a>
								</td>
							</tr>
							</s:iterator>
						</table>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
</body>
</html>
