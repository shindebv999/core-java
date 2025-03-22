package com.rt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompanyRegForm extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	String cname=req.getParameter("cname");
	String owner=req.getParameter("owner");
	String saddress=req.getParameter("saddress");
	String city=req.getParameter("city");
	String state=req.getParameter("state");
	String zipc=req.getParameter("zipc");
	String ddlist=req.getParameter("ddlist");
	String email=req.getParameter("email");
	String phoneno=req.getParameter("phoneno");
	String n_Caption=req.getParameter("n_Caption");
	String ind=req.getParameter("ind");
	
	CompanyRegEntity CE =new CompanyRegEntity(cname,owner,saddress,city,state,zipc,ddlist,email,phoneno,n_Caption,ind);
	
	req.setAttribute("com", CE);
	
	RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
	rd.forward(req, res);
}
}
