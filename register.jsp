<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
<head>      
<title>ע�����</title>  
</head>    
<body bgcolor="#ddd" style="font-family:Microsoft YaHei" >  
<div style="text-align:center;margin-top:120px">    
<h1 >��ע��</h1>    
<form action="registerServlet" method="post">    	
<table style="margin-left:40%">    		
<caption>�û�ע��</caption>    		    		
<tr>    			
	<td>��¼����</td>    			
	<td><input name="userName" type="text" size="20"></td>    		
</tr>    		
<tr>    			
	<td>����:</td>    			
	<td><input name="password" type="password" size="21"></td>    		
</tr>    	
</table>     	
<input type="submit" value="ע��">    	
<input type="reset" value="����">     
</form>    
<br>    
<a href="login.jsp">��¼</a>    
</div>  
</body>
</html>
