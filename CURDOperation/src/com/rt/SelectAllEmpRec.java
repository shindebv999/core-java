package com.rt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectAllEmpRec extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from emp_info");
			ResultSet rs = ps.executeQuery();

			ArrayList<EmpRegEntity> empList = new ArrayList<>();

			while (rs.next()) {
				int id = rs.getInt("id");
				String empName = rs.getString("empName");
				String empLname = rs.getString("empLname");
				String city = rs.getString("city");
				String state = rs.getString("state");
				String zipc = rs.getString("zipc");
				String ddlist = rs.getString("ddlist");
				String email = rs.getString("email");
				String phoneno = rs.getString("phoneno");

				EmpRegEntity e = new EmpRegEntity(id, empName, empLname, city, state, zipc, ddlist, email, phoneno);
				empList.add(e);
				
				
			}
			req.setAttribute("empList", empList);

			RequestDispatcher rd = req.getRequestDispatcher("selectAll.jsp");
			rd.forward(req, res);
			con.close();
			
			
		} 
		
		catch (Exception e) {
			System.out.println(e);

		}

	}
}
