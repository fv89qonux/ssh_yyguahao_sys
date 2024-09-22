<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        .Header {CLEAR: both; DISPLAY: block; FLOAT: left; BACKGROUND-IMAGE: url(<%=path %>/img/top.jpg); WIDTH: 973px; POSITION: relative; HEIGHT: 220px}
        .Header .HeaderTop {HEIGHT: 183px}
    </style>
    <script type="text/javascript">
     function keshiAll()
        {
             var url="<%=path %>/keshiAll.action";
		     window.open(url);
        }
        
     function keshiAll2()
        {
             var url="<%=path %>/chuangweiAll.action";
		     window.open(url);
        }
        
     function myyuyueAll()
        {
            <s:if test="#session.user==null">
	                  alert("请先登录");
            </s:if>
            
            <s:else>
			      var url="<%=path %>/yuyuePre.action";
			     window.open(url);
            </s:else>
        }
        
     function myXinxiAll()
        {
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            
            <s:else>
                var url="<%=path %>/userAll.action";
			    window.open(url);
            </s:else>
        }
        
      function zhinanAll()
      {
             var url="<%=path %>/yuyueOk.action";
		     window.open(url);
      }
        
     function myliuyanAll()
        {
            <s:if test="#session.user==null">
	                  alert("请先登录");
            </s:if>
            
            <s:else>
                 var url="<%=path %>/liuyanAll.action";
			     window.open(url);
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
						     <a href="<%=path %>/qiantai/default.jsp">用户首页</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="#" onclick="zhinanAll()">指南导航</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="#" onclick="keshiAll()">科室专家</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="#" onclick="keshiAll2()">住院床位</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="#" onclick="myyuyueAll()">预约记录</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						     <a href="#" onclick="myXinxiAll()">用户中心</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a href="#" onclick="myliuyanAll()">意见反馈</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a target="_self" href="<%=path %>/admin/login.jsp">进入后台</a>&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
