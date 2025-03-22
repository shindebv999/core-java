package PreparedStatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class SelectAll {

	public static void main(String[] args) {
		try {


			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			PreparedStatement ps = con.prepareStatement("select * from student_info");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id"));
				System.out.println(rs.getString(2));
				System.out.println(rs.getFloat("age"));
				System.out.println("............................");
			}
			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}
	}

}
