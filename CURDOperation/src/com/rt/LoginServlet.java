package com.rt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	String userName = req.getParameter("userName");
	String Password = req.getParameter("Password");
	int count=0;
	
     try{
    	 Class.forName("com.mysql.jdbc.Driver");
    	 
    	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","root");
    	 PreparedStatement ps=con.prepareStatement("select count(*) from login_user where UserName=? and Password=?");
    	
    	 ps.setString(1, userName);
    	 ps.setString(2, Password);
    	
    	 ResultSet rs =ps.executeQuery();
    	 rs.next();
    	 count=rs.getInt(1);
    	 
    	 con.close();
     }
     
     catch(Exception e)
     {
    	System.out.println(e);
    	 
     }
     
    if(count==1){
    	//Httpsession
    	HttpSession session=req.getSession();
    	session.setAttribute("loggedInUser", userName);
    	
    	//cookies
//    	Cookie ck=new Cookie("userName",userName);
//    	res.addCookie(ck);
    	RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
    	rd.include(req, res);
  			
    }
    else{
    	req.setAttribute("Error", "Wrong Cred..");
	RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
	rd.include(req, res);
    }
	}
}