<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
<head>     
 <title>登录界面</title>  
 </head>    
 <body bgcolor="#ddd" style="font-family:Microsoft YaHei" >  
 <div style="text-align:center;margin-top:120px">    
 <h1 >请登录</h1>   
 <form action="loginServlet" method="post">    	
 <table style="margin-left:40%">    		
 <caption>用户登录</caption>    		
 <tr>    			
 	<td>登录名：</td>    			
 	<td><input name="name" type="text" size="20"></td>    		
 </tr>    		
 <tr>    			
 	<td>密码:</td>    			
 	<td><input name="password" type="password" size="21"></td>    		
 </tr>    	
 </table>     	
 <input type="submit" value="登录">    	
 <input type="reset" value="重置">     
 </form>    
 <br>    
 <a href="register.jsp">注册</a>    
 </div>  
 </body>
 </html>
