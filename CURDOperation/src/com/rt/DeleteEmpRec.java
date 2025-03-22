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

public class DeleteEmpRec extends HttpServlet {
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
				"delete from  emp_info where id=? ");
                 	 
   	 ps.setInt(1,id);


		int result = ps.executeUpdate();

		if (result == 1) {
			req.setAttribute("successMsg", "Emp-Recor deleted Successsfully....!");
		} else {
			req.setAttribute("errorMsg", " Unable to delete Emp-Record  ....!");
		}
		con.close();
	} catch (Exception e) {
		System.out.println(e);

	}

	RequestDispatcher rd = req.getRequestDispatcher("deleteEmpRec.jsp");
	rd.forward(req, res);


}
}
