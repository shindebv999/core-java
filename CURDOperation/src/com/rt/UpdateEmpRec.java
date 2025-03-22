package com.rt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateEmpRec extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		int id=Integer.parseInt(req.getParameter("id"));
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
					"update emp_info set empName=?,empLname=?,city=?,state=?,zipc=?,ddlist=?,email=?,phoneno=? where id=? ");
                    ps.setString(1, empName);
       	 ps.setString(2, empLname);
       	 ps.setString(3, city);
       	 ps.setString(4, state);
       	 ps.setString(5, zipc);
       	 ps.setString(6, ddlist);
       	 ps.setString(7, email);
       	 ps.setString(8, phoneno);
       	 ps.setInt(9,id);


			int result = ps.executeUpdate();

			if (result == 1) {
				req.setAttribute("successMsg", "Emp-Record Updated Successsfully....!");
			} else {
				req.setAttribute("errorMsg", " Unable to Update Emp-Record  ....!");
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);

		}

		RequestDispatcher rd = req.getRequestDispatcher("updateEmpRec.jsp");
		rd.forward(req, res);

			}
}
