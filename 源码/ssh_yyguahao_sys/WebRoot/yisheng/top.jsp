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
    <style type="text/css">
        .Header {CLEAR: both; DISPLAY: block; FLOAT: left; BACKGROUND-IMAGE: url(<%=path %>/img/yishengtop.jpg); WIDTH: 973px; POSITION: relative; HEIGHT: 220px}
        .Header .HeaderTop {HEIGHT: 183px}
    </style>
    <script type="text/javascript">
     function yuyueCheck()
        {
            <s:if test="#session.yisheng==null">
	                  alert("请先登录");
            </s:if>
            
            <s:else>
			      var url="<%=path %>/yuyueCheck.action";
			     window.open(url,"_self");
            </s:else>
        }
        
         function zhuyuanCheck()
        {
            <s:if test="#session.yisheng==null">
	                  alert("请先登录");
            </s:if>
            
            <s:else>
			      var url="<%=path %>/zhuyuanMana.action";
			     window.open(url,"_self");
            </s:else>
        }
        
     function yishengInfo()
        {
            <s:if test="#session.yisheng==null">
                  alert("请先登录");
                  var url="<%=path %>/yisheng/default.jsp";
			      window.open(url,"_self");
            </s:if>
            
            <s:else>
                var url="<%=path %>/yishengInfo.action";
			    window.open(url,"_self");
            </s:else>
        }
        
    </script>
  </head>
  
  <body>
	 <div align="center" class="Wrapper">
		 <div class="Header">
				<div class="HeaderTop">
				    <br/>
				    <font size="22px;"></font>
				</div>
				<div id="Menu" class="Menu" >
					<div id="fstMenu" class="fstMenu"></div>
					<div class="secMenu">
						<span id="secMenu0" class="secMenu-center">
						     <a href="<%=path %>/yisheng/default.jsp">医生首页</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="javascript:yuyueCheck()">就诊预约</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="javascript:zhuyuanCheck()">住院预约</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="javascript:yishengInfo()">个人信息</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a target="_self" href="<%=path %>/admin/login.jsp">进入后台</a>&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <font color=white align=right>
                                <script>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)
                                </script><span id=clock></span>
                             </font>
						</span>
					</div>
				</div>
		    </div>
        </div>	
  </body>
</html>
