<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />

<link href="css/div.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript">
       function yuyueDel(id)
       {
            var url="<%=path%>/yuyueDel.action?id="+id;
            window.location.href=url;
       }
       
        function yuyueAgree(id)
       {
            var url="<%=path%>/yuyueAgree.action?id="+id;
            window.location.href=url;
       }
    </script>
</head>

<body>

	<jsp:include flush="true" page="/yisheng/top.jsp"></jsp:include>

	<div align="center" class="Wrapper">
		<div id="MainCenter" align="center" class="MainCenter">
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

			<div id="content" class="Sub">
				<div class="NewContainer">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop">处理就诊预约信息</div>
					</div>
					<div class="Slot">
					  <form name="formAdd" method="post">
						<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center">
							<tr align="center" bgcolor="#FAFAF1" height="22">
								<td width="12%">预约时间</td>
								<td width="8%">预约用户</td>
								<td width="35%">备注信息</td>
								<td width="35%">预约状态</td>
								<td width="10%">操作</td>
							</tr>
							<s:iterator value="#request.yuyueList" id="yuyue">
								<tr align='center' bgcolor="#FFFFFF" height="22">
									<td bgcolor="#FFFFFF" align="center">
									  <s:property value="#yuyue.shijian" /></td>
									<td bgcolor="#FFFFFF" align="center">
									  <s:property value="#yuyue.userName" /></td>
									<td bgcolor="#FFFFFF" align="left">
									  <s:property value="#yuyue.beizhu" /></td>
									<td bgcolor="#FFFFFF" align="left" style="color:red">
									  <s:property value="#yuyue.huifu" /></td>
									<td bgcolor="#FFFFFF" align="center">
									  <a href="#" onclick=" yuyueAgree(<s:property value="#yuyue.id"/>)">同意</a>
									  <a href="#" onclick=" yuyueDel(<s:property value="#yuyue.id"/>)">拒绝</a> 
									</td>
								</tr>
							</s:iterator>
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
