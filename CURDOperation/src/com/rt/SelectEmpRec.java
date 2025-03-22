package com.rt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectEmpRec extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String empName = req.getParameter("empName");
		String empLname = req.getParameter("empLname");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String zipc = req.getParameter("zipc");
		String ddlist = req.getParameter("ddlist");
		String email = req.getParameter("email");
		String phoneno = req.getParameter("phoneno");

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
			PreparedStatement ps = con.prepareStatement(
					"select * from emp_info where id=? ");
	
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			EmpRegEntity e = new EmpRegEntity(id,empName, empLname, city, state,
					 zipc, ddlist, email, phoneno);
					 req.setAttribute("emp", e);
			if(rs.next()){
			e.setId(rs.getInt(1));	
			e.setEmpName(rs.getString(2));
			e.setEmpLname(rs.getString(3));
			e.setCity(rs.getString(4));
			e.setState(rs.getString(5));
			e.setZipc(rs.getString(6));
			e.setDdlist(rs.getString(7));
			e.setEmail(rs.getString(8));
			e.setPhoneno(rs.getString(9));
				
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);

		}
		RequestDispatcher rd = req.getRequestDispatcher("selectEmpRec.jsp");
		rd.forward(req, res);

		 
	}
}
