<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@page import = "com.szx.jnmc.MsgDao" %>
    <%@page import = "com.szx.jnmc.Message" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�޸�����</title>
</head>
<body>
<%
    String messageid = request.getParameter("messageid");
    request.setCharacterEncoding("GBK");
    response.setContentType("text/html;charset=GBK");
    ServletContext ctx = request.getServletContext();
    String server = ctx.getInitParameter("server");
    String dbname = ctx.getInitParameter("dbname");
    String dbuser = ctx.getInitParameter("dbuser");
    String dbpwd = ctx.getInitParameter("dbpwd");
    MsgDao dao = new MsgDao();
    try{
        dao.getConn(server, dbname, dbuser, dbpwd);
         Message msg = dao.getMsgById(messageid);
         if(msg != null){
             pageContext.setAttribute("msg", msg);
         }
    }catch(Exception e){
        e.printStackTrace();
    }   
%>
<form method = "POST" action = "editmsgdo.jsp"> 
<table>
    <tr>
        <td>���⣺&nbsp;&nbsp;<input type = "text" name = "title" value ="${msg.title}"></td>
    </tr>
    <tr>
        <td>���ݣ�&nbsp;&nbsp;<input type = "text" name = "context" value ="${msg.context}"></td>
    </tr>
    <tr>
    <%-- <input type = "text" name = "lefttime" value ="${msg.lefttime}"> --%>
        <td>���ڣ�&nbsp;&nbsp;<span>${msg.lefttime }</span></td>  
    </tr>
    <%-- <input type = "text" name = "wholeft" value ="${msg.wholeft}"readonly="readonly"> --%>
    <tr>
        <td>�����ˣ�<span>${msg.wholeft}</span></td>
    </tr>
    <%-- <input type ="text" name = "messageid" value = "${msg.messageid }" readonly="readonly"> --%>
    <tr>
        <td>����id��<input type ="text" name = "messageid" value = "${msg.messageid }" readonly="readonly"></td>      
    </tr>
    <tr>
    <td>
    <td><input type = "submit" value = "�ύ"></td>   
    <td><input type = "reset" value = "����"></td>
    </tr>

</table>
</form>
</body>
</html>


