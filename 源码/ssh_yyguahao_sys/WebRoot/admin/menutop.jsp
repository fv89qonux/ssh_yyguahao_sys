<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<head>
<style>
body {
	padding: 0px;
	margin: 0px;
	font-size: 10pt;
	background-color: white;
}

ul,li {
	padding: 0px;
	margin: 0px;
	list-style-type: none;
}

#header {
	width: 995px;
	margin: 0 auto;
}
/*导航菜单*/
#topmenu {
	width: 920px;
	margin: 0 auto;
}

#navMenu {
	width: 920px;
	height: 48px;
	display: block;
	overflow: hidden;
	background: url('../img/nav-bg.png') 5px 10px repeat-x;
}

#navMenu ul {
	padding-left: 40px;
	height: 20px;
}

#navMenu li {
	text-align: center;
	float: left;
	height: 20px;
}

#navMenu li a {
	width: 85px;
	color: #fff;
	display: block;
	text-decoration: none;
	padding: 22px 10px 16px;
}

#navMenu li a:hover,#navMenu li.hover a {
	border: none;
	text-decoration: none;
	color: #fff;
	padding: 22px 10px 16px;
}

#navMenu li.right {
	width: 73px;
	height: 48px;
	float: right;
}

#navMenu li.line {
	width: 2px;
	height: 48px;
}
/*-------- 下拉菜单 --------------*/
.dropMenu {
	position: absolute;
	top: 2;
	z-index: 2;
	width: 110px;
	visibility: hidden;
	margin: -5px 0 0 -1px;
	border: 1px solid #aec1df;
	border-top: 2px;
	background-color: #fff;
	padding-top: 0px;
	padding-bottom: 2px;
}

.dropMenu li {
	margin-top: 2px;
	margin-bottom: 4px;
	padding-left: 12px;
}

.dropMenu li a {
	width: 100px;
	display: block;
	text-align: left;
	text-decoration: none;
	color: #333;
	padding: 4px 0 4px 8px;
}

.dropMenu+li a {
	border-top: none;
}

* html .dropMenu a {
	width: 100%;
	color: #333;
}

.dropMenu a:hover {
	text-decoration: underline;
	color: #2d6bac; 
}
</style>
</head>


<body>
	<div id="header"></div>
	<div id="topmenu">
	 <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 background="<%=path %>/img/admintop.jpg" >
	 <tr height=100px></tr>
	 <tr height=34px>
	   <td></td>
	   <td align="right">欢迎您：管理员</td></tr>
	 <tr>
	   <td height=60px width=70%></td>
	   <td>
	      <font color=black align=right>
                <script>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)
                </script><span id=clock></span>
          </font>
       </td>
	 </tr>
	<TR><td colspan=2>
		<div id="navMenu" >
			<ul>
				<li><a href='#' rel='dropmenu1' target="_self">管理员主页</a></li>
				<li><a href='userMana.action' target="main">用户管理</a></li>
				<li><a href='#' rel='dropmenu3' target="_self">科室管理</a></li>
				<li><a href='#' rel='dropmenu4' target="_self">专家管理</a></li>
				<li><a href='#' rel='dropmenu5' target="_self">床位管理</a></li>
				<li><a href='liuyanMana.action' target="main">留言管理</a></li>
				<li><a href='#' rel='a' target="_self">公告管理</a></li>
				<li><a href='login.jsp' target="_parent">安全退出</a></li>
			</ul>
		</div>
	</div>
	</td>
	</TR>
	</TABLE>
	<script type='text/javascript'>
var cssdropdown={
disappeardelay: 1500,
disablemenuclick: false,
enableswipe: 1,
enableiframeshim: 1,
dropmenuobj: null, ie: document.all, firefox: document.getElementById&&!document.all, swipetimer: undefined, bottomclip:0,
getposOffset:function(what, offsettype){
var totaloffset=(offsettype=="left")? what.offsetLeft : what.offsetTop;
var parentEl=what.offsetParent;
while (parentEl!=null){
totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
parentEl=parentEl.offsetParent;
}
return totaloffset;
},
swipeeffect:function(){
if (this.bottomclip<parseInt(this.dropmenuobj.offsetHeight)){
this.bottomclip+=10+(this.bottomclip/10)
this.dropmenuobj.style.clip="rect(0 auto "+this.bottomclip+"px 0)"
}
else
return
this.swipetimer=setTimeout("cssdropdown.swipeeffect()", 10)
},
showhide:function(obj, e){
if (this.ie || this.firefox)
this.dropmenuobj.style.left=this.dropmenuobj.style.top="-500px"
if (e.type=="click" && obj.visibility==hidden || e.type=="mouseover"){
if (this.enableswipe==1){
if (typeof this.swipetimer!="undefined")
clearTimeout(this.swipetimer)
obj.clip="rect(0 auto 0 0)"
this.bottomclip=0
this.swipeeffect()
}
obj.visibility="visible"
}
else if (e.type=="click")
obj.visibility="hidden"
},
iecompattest:function(){
return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
},
clearbrowseredge:function(obj, whichedge){
var edgeoffset=0
if (whichedge=="rightedge"){
var windowedge=this.ie && !window.opera? this.iecompattest().scrollLeft+this.iecompattest().clientWidth-15 : window.pageXOffset+window.innerWidth-15
this.dropmenuobj.contentmeasure=this.dropmenuobj.offsetWidth
if (windowedge-this.dropmenuobj.x < this.dropmenuobj.contentmeasure)
edgeoffset=this.dropmenuobj.contentmeasure-obj.offsetWidth
}
else{
var topedge=this.ie && !window.opera? this.iecompattest().scrollTop : window.pageYOffset
var windowedge=this.ie && !window.opera? this.iecompattest().scrollTop+this.iecompattest().clientHeight-15 : window.pageYOffset+window.innerHeight-18
this.dropmenuobj.contentmeasure=this.dropmenuobj.offsetHeight
if (windowedge-this.dropmenuobj.y < this.dropmenuobj.contentmeasure){
edgeoffset=this.dropmenuobj.contentmeasure+obj.offsetHeight
if ((this.dropmenuobj.y-topedge)<this.dropmenuobj.contentmeasure)
edgeoffset=this.dropmenuobj.y+obj.offsetHeight-topedge
}
}
return edgeoffset
},
dropit:function(obj, e, dropmenuID){
if (this.dropmenuobj!=null)
	this.dropmenuobj.style.visibility="hidden"
this.clearhidemenu()
if (this.ie||this.firefox){
obj.onmouseout=function(){cssdropdown.delayhidemenu()}
obj.onclick=function(){return !cssdropdown.disablemenuclick}
this.dropmenuobj=document.getElementById(dropmenuID)
if(!this.dropmenuobj) return;
this.dropmenuobj.onmouseover=function(){cssdropdown.clearhidemenu()}
this.dropmenuobj.onmouseout=function(e){cssdropdown.dynamichide(e)}
this.dropmenuobj.onclick=function(){cssdropdown.delayhidemenu()}
this.showhide(this.dropmenuobj.style, e)
this.dropmenuobj.x=this.getposOffset(obj, "left")
this.dropmenuobj.y=this.getposOffset(obj, "top")
this.dropmenuobj.style.left=this.dropmenuobj.x-this.clearbrowseredge(obj, "rightedge")+"px"
this.dropmenuobj.style.top=this.dropmenuobj.y-this.clearbrowseredge(obj, "bottomedge")+obj.offsetHeight+1+"px"
this.positionshim()
}
},
positionshim:function(){
if (this.enableiframeshim && typeof this.shimobject!="undefined"){
if (this.dropmenuobj.style.visibility=="visible"){
this.shimobject.style.width=this.dropmenuobj.offsetWidth+"px"
this.shimobject.style.height=this.dropmenuobj.offsetHeight+"px"
this.shimobject.style.left=this.dropmenuobj.style.left
this.shimobject.style.top=this.dropmenuobj.style.top
}
this.shimobject.style.display=(this.dropmenuobj.style.visibility=="visible")? "block" : "none"
}
},
hideshim:function(){
if (this.enableiframeshim && typeof this.shimobject!="undefined")
this.shimobject.style.display='none'
},
contains_firefox:function(a, b) {
while (b.parentNode)
if ((b = b.parentNode) == a)
return true;
return false;
},
dynamichide:function(e){
var evtobj=window.event? window.event : e
if (this.ie&&!this.dropmenuobj.contains(evtobj.toElement))
this.delayhidemenu()
else if (this.firefox&&e.currentTarget!= evtobj.relatedTarget&& !this.contains_firefox(evtobj.currentTarget, evtobj.relatedTarget))
this.delayhidemenu()
},
delayhidemenu:function(){
this.delayhide=setTimeout("cssdropdown.dropmenuobj.style.visibility='hidden'; cssdropdown.hideshim()",this.disappeardelay)
},
clearhidemenu:function(){
if (this.delayhide!="undefined")
clearTimeout(this.delayhide)
},
startchrome:function(){
for (var ids=0; ids<arguments.length; ids++){
var menuitems=document.getElementById(arguments[ids]).getElementsByTagName("a")
for (var i=0; i<menuitems.length; i++){
if (menuitems[i].getAttribute("rel")){
var relvalue=menuitems[i].getAttribute("rel")
menuitems[i].onmouseover=function(e){
var event=typeof e!="undefined"? e : window.event
cssdropdown.dropit(this,event,this.getAttribute("rel"))
}
}
}
}
if (window.createPopup && !window.XmlHttpRequest){
document.write('<IFRAME id="iframeshim"  src="" style="display: none; left: 0; top: 0; z-index: 90; position: absolute; filter: progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)" frameBorder="0" scrolling="no"></IFRAME>')
this.shimobject=document.getElementById("iframeshim")
}
}
}
</script>

	<ul id="dropmenu1" class="dropMenu">
		<li><a href="index/adminXinxi.jsp" target="main">查看个人信息</a></li>
		<li><a href="index/userPw.jsp" target="main">修改密码</a></li>
		<li><a href="index/adminAdd.jsp" target="main">管理员添加</a></li>
		<li><a href="adminManage.action" target="main">管理员删除</a></li>
	</ul>
	<ul id="dropmenu3" class="dropMenu">
		<li><a href="keshi/keshiAdd.jsp" target="main">科室添加</a></li>
		<li><a href="keshiMana.action" target="main">科室管理</a></li>
	</ul>
	<ul id="dropmenu4" class="dropMenu">
		<li><a href="yishengAddPre.action" target="main">专家添加</a></li>
		<li><a href="yishengMana.action" target="main">专家管理</a></li>
	</ul>
	<ul id="dropmenu5" class="dropMenu">
		<li><a href="chuangwei/chuangweiAdd.jsp" target="main">床位添加</a></li>
		<li><a href="chuangweiMana.action" target="main">床位删除</a></li>
	</ul>
	<ul id="a" class="dropMenu">
		<li><a href="gonggao/gonggaoAdd.jsp" target="main">公告张贴</a></li>
		<li><a href="gonggaoMana.action" target="main">公告管理</a></li>
	</ul>
	
	<script type="text/javascript">cssdropdown.startchrome("navMenu")</script>

</body>
</html>