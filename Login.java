package com.yg.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pwd");
	
		if(uname.equals("yogesh") && pass.equals("y@123"))
		{
			
			
			HttpSession session =req.getSession();
			session.setAttribute("username", uname);
			
			resp.sendRedirect("Welcome.jsp");
		}
		else
		{
			resp.sendRedirect("Login.jsp");
		}

	}

}
