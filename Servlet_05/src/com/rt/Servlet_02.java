package com.rt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet_02 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=res.getWriter();
		String name=req.getParameter("name");
		String pass=req.getParameter("pass");

		pw.write("Servlet_02   "+name);
		pw.write("        Servlet_02   "+pass);
	//	System.out.println("Servlet_02");
		
	}
}
