package com.rt;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet_03 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ServletConfig sc = getServletConfig();
		String name = sc.getInitParameter("sname");
		String pass = sc.getInitParameter("pass");
		
		System.out.println(name);
		System.out.println(pass);
		System.out.println("...................................................");
		
		
		ServletContext sc1 = getServletContext();
		String empName = sc1.getInitParameter("empName");
		String email = sc1.getInitParameter("email");
		String phone = sc1.getInitParameter("phone");
		String dept = sc1.getInitParameter("dept");
		String City = sc1.getInitParameter("City");
	
		
		System.out.println(empName);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(dept);
		System.out.println(City);
	


	}
	
	}
