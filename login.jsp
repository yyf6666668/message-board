<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.*"%>
<%@ page import="com.wgh.model.UserInfo"%>
<%@ page import="com.wgh.servlet.UserListener"%>
<%

String username=request.getParameter("username");	
UserInfo user=UserInfo.getInstance();	
session.setMaxInactiveInterval(600);		
Vector vector=user.getList();
boolean flag=true;	
if(vector!=null&&vector.size()>0){
	for(int i=0;i<vector.size();i++){
		if(user.equals(vector.elementAt(i))){
			out.println("<script language='javascript'>alert('该用户已经登录');window.location.href='index.jsp';</script>");
			flag=false;
			break;
		}
	}
}
if(flag){
	UserListener ul=new UserListener();
	ul.setUser(username);
	session.setAttribute("user",ul);
	session.setAttribute("username",username);
	user.addUser(ul.getUser());	
	session.setAttribute("loginTime",new Date().toLocaleString());	
	response.sendRedirect("Messages?action=loginRoom");
}
%>
