
package com.rt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmpPersonalData extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//cookies
//		String user = null;
//		Cookie[] cks = req.getCookies();
//		if (cks != null) {
//			for (Cookie ck : cks) {
//				String key = ck.getName();
//
//				if (key.equals("userName")) {
//					user = ck.getValue();
//
//				}
//			}
//		}
//
		//Httpsession
		HttpSession session=req.getSession(false);
    	String loggedInUser=(String) session.getAttribute("loggedInUser");
    	
		if (loggedInUser == null) {
			req.setAttribute("Error", " Login First");
			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
			rd.include(req, res);

		} else {
			 PrintWriter pw=res.getWriter();
			 pw.write("<h1>Welcome   "+loggedInUser+"</h1>");
			 pw.write("<a href='LogoutServlet'>Logout</a>");
			
//			RequestDispatcher rd = req.getRequestDispatcher("EmpPersonalData.jsp");
//			rd.include(req, res);
//			req.setAttribute("userName", user);

		}
	}

}
