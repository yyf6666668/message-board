<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="org.model.MessBoar" %>
<%@page import="org.dao.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
<head>      
<title>���Խ���</title>  
</head>    
<body bgcolor="#ddd" style="font-family:Microsoft YaHei">  
<div style="text-align:center;margin-top:140px">    
<h1 >������</h1>   
<form action="leaveMessageServlet" method="post">  			
<table style="margin-left: 37%" border="1">  			
<caption>��д������Ϣ</caption>  		    	
<tr>
	<td>���Ա���</td>  				
	<td><input type="text" name="title"/></td>
</tr>  			
<tr>
	<td>��������</td>  				
	<td><textarea name="message" rows="5" cols="35"></textarea></td>			
</tr>  			
</table>  		
<input type="submit" value="�ύ"/>  		
<input type="reset" value="����"/>  	
</form>    
<a href="main.jsp">�������԰����</a>    
</div>  
</body>
</html>
