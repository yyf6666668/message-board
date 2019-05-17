package org.servlet;
import java.io.IOException;
import org.dao.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RegisterServlet extends HttpServlet {	
	public void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {			
		request.setCharacterEncoding("gb2312");
		
		String name=request.getParameter("userName");	
		System.out.println(name);
		String password=request.getParameter("password");
		if(new LoginDao().insertUser(name, password)){				
			response.sendRedirect("login.jsp");			
			}		
	}	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {		
		doGet(request,response);	
	}
}
