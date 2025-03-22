package com.rt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet_01 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
      PrintWriter pw=res.getWriter();
      pw.write("Servlet_01");
      
      RequestDispatcher rd=req.getRequestDispatcher("Servlet2");
      rd.include(req, res);
      
      //pw.write("     Servlet_01 After");
      res.sendRedirect("Servlet2?name=Ram&pass=ram@123");
	}
}
