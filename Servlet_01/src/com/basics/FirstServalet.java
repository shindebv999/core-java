package com.basics;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FirstServalet implements Servlet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		System.out.println(" FirstServalet Service Method Invoked");
		
	}
	@Override
	public void init(ServletConfig arg0) throws ServletException {
		System.out.println("FirstServalet Init Method Invoked");

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
