<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="safe.jsp"%>
<html>
<head>
<title>聊天室</title>
<link href="CSS/style.css" rel="stylesheet">
<script language="javascript" src="JS/AjaxRequest.js"></script>
<script language="javascript">
window.setInterval("showContent();",1000);
window.setInterval("showOnline();",10000);
var sysBBS="<span style='font-size:14px; line-height:30px;'>海内存知己，天涯若比邻！欢迎光临心之语聊天室，请遵守聊天室规则，不要使用不文明用语。</span><br><span style='line-height:22px;'>";
function showOnline(){
	var loader=new net.AjaxRequest("online.jsp?nocache="+new Date().getTime(),deal_online,onerror,"GET");
}
function showContent(){
	var loader1=new net.AjaxRequest("Messages?action=getMessages&nocache="+new Date().getTime(),deal_content,onerror,"GET");
}
function onerror(){
	alert("很抱歉，服务器出现错误，当前窗口将关闭！");
	window.opener=null;
	window.close();
}
function deal_online(){
	online.innerHTML=this.req.responseText;
}
function deal_content(){
	var returnValue=this.req.responseText;	
	var h=returnValue.replace(/\s/g,"");	//去除字符串中的Unicode空白符
	if(h=="error"){
		alert("您的账户已经过期，请重新登录！");
		Exit();
	}else{
		content.innerHTML=sysBBS+returnValue+"</span>";
		document.getElementById('content').scrollTop = document.getElementById('content').scrollHeight*2;	//当聊天信息超过一屏时，设置最先发送的聊天信息不显示
	}
}

window.onload=function(){
	showContent();					
	showOnline();						
}

window.onbeforeunload=function(){    		
	if(event.clientY<0 && event.clientX>document.body.scrollWidth){  
         Exit();                   		
    }
}
</script>
<script language="javascript">
<!--
	function send(){	
		if(form1.to.value==""){
			alert("请选择聊天对象！");return false;
		}
		if(form1.content1.value==""){
			alert("发送信息不可以为空！");form1.content1.focus();return false;
		}
		var param="from="+form1.from.value+"&face="+form1.face.value+"&color="+form1.color.value+"&to="+form1.to.value+"&content="+	form1.content1.value;
        var loader=new net.AjaxRequest("Messages?action=sendMessage",deal_send,onerror,"POST",param);

	}
function deal_send(){
content.innerHTML=sysBBS+this.req.responseText+"</span>";
}
	function Exit(){
		window.location.href="leave.jsp";
		alert("欢迎您下次光临！");
	}
-->
</script>
<script language="javascript">

function set(selectPerson){	
	if(selectPerson!="${username}"){
			form1.to.value=selectPerson;
	}else{
		alert("请重新选择聊天对象！");
	}
}
</script>
<script type="text/javascript">
	function checkScrollScreen(){
    if(!form1.scrollScreen.checked){
        document.getElementById("content").style.overflow='scroll';
    }else{
        document.getElementById("content").style.overflow='hidden';
        document.getElementById('content').scrollTop = document.getElementById('content').scrollHeight*2;    
    }
    setTimeout('checkScrollScreen()',500);
}
	
</script>
	
</head>
<body>
<table width="778" height="150" border="0" align="center" cellpadding="0" cellspacing="0" background="images/top.jpg">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="778" height="276" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="165" valign="top" bgcolor="#f6fded" id="online" style="padding:5px">在线人员列表</td>
    <td width="613"  height="200px" valign="top" background="images/main_bj.jpg" bgcolor="#FFFFFF" style="padding:5px; ">
	<div style="height:290px; overflow:hidden" id="content">聊天内容</div>
	</td>

  </tr>
</table>
<table width="778" height="95" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#D6D3CE" background="images/bottom.jpg">

<form action="" name="form1" method="post" >
  <tr>
    <td height="30" align="left">&nbsp;</td>
    <td height="37" align="left"><input name="from" type="hidden" value="${username}">[${username} ]对
      <input name="to" type="text" value="" size="35" readonly="readonly">
表情
<select name="face" class="wenbenkuang">
  <option  value="无表情的">无表情的</option>
  <option value="微笑着" selected>微笑着</option>
  <option value="笑呵呵地">笑呵呵地</option>
  <option value="热情的">热情的</option>
  <option value="温柔的">温柔的</option>
  <option value="红着脸">红着脸</option>
  <option value="幸福的">幸福的</option>
  <option value="嘟着嘴">嘟着嘴</option>
  <option value="同情的">同情的</option>
  <option value="遗憾的">遗憾的</option>
  <option value="正义凛然的">正义凛然的</option>
  <option value="严肃的">严肃的</option>
  <option value="慢条斯理的">慢条斯理的</option>
  <option value="无精打采的">无精打采的</option>
</select>
说：</td>
    <td width="189" align="left"> &nbsp;&nbsp;字体颜色：
      <select name="color" size="1" class="wenbenkuang" id="select">
        <option selected>默认颜色</option>
        <option style="color:#FF0000" value="FF0000">红色热情</option>
        <option style="color:#0000FF" value="0000ff">蓝色忧郁</option>
        <option style="color:#ff00ff" value="ff00ff">桃色浪漫</option>
        <option style="color:#009900" value="009900">绿色青春</option>
        <option style="color:#009999" value="009999">青色清爽</option>
      </select></td>
    <td width="19" align="left"><input name="scrollScreen" type="checkbox" class="noborder" id="scrollScreen" onClick="checkScrollScreen()" value= "1" checked></td>
  </tr>
  <tr>
    <td width="21" height="30" align="left">&nbsp;</td>
    <td width="549" align="left">
    
    <input name="content1" type="text" size="70" onKeyDown="if(event.keyCode==13 && event.ctrlKey){send();}">
      <input name="Submit2" type="button" class="btn_grey" value="发送" onClick="send()"></td>
    <td align="right"><input name="button_exit" type="button" class="btn_grey" value="退出聊天室" onClick="Exit()"></td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="left">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
</form>
</table>
</body>
</html>
