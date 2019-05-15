<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<title>
	心之语聊天室
</title>
<link href="CSS/style.css" rel="stylesheet">
<script language="javascript">
function check(){
	if(form1.username.value==""){
		alert("请输入用户名！");form1.username.focus();return false;	
	}else if(form1.username.value=="\'"){
		alert("请不要输入非法字符！");form1.username.focus();return false;
	}
}
</script>
<body>
<br>
<form name="form1" method="post" action="Messages?action=loginRoom" onSubmit="return check()">
<table width="1100" height="600"  border="0" align="center" background="images/4.jpg">
      <tr>
        <td height="474"class="word_dark">&nbsp;</td>
      </tr>
      <tr>
        <td width="159" align="center" valign="middle" class="word_dark">&nbsp;</td>
        <td width="648" align="center" valign="middle" class="word_dark">用户名：
<input type="text" name="username" class="login"></td>
        <td width="204" valign="middle" class="word_dark"><input name="Submit" type="submit" class="btn_bg" value="进 入"></td>
      </tr>
</table>		
</form>
</body>
</html>
