<%@page import="com.szx.jnmc.UserDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.szx.jnmc.DBOper"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@page import="java.util.List"%>
    <%@page import="com.szx.jnmc.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���԰�</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    response.setContentType("text/html;charset=gbk");
    /* PrintWriter out = response.getWriter();  */
    String username = request.getParameter("username");
    String userpass = request.getParameter("userpass");
    ServletContext ctx = this.getServletContext();
    String server = ctx.getInitParameter("server");
    String dbname = ctx.getInitParameter("dbname");
    String dbuser = ctx.getInitParameter("dbuser");
    String dbpwd = ctx.getInitParameter("dbpwd");
    UserDao dao = new UserDao();
    User user = new User();
    user.setUsername(username);
    user.setUserpass(userpass);
    try{
        dao.getConn(server, dbname, dbuser, dbpwd);
        if(dao.addUser(user)){
            out.println("ע��ɹ�");
            out.println("<br><a href = 'login.jsp'>���ص�½</a></br>");
        }else{
            out.println("ע��ʧ��");
            out.println("<br><a href = 'regist.jsp'>����ע��</a></br>");
        }
    }catch(Exception e){
        e.printStackTrace();
    }
%>
</body>
</html>
