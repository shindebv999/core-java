package PreparedStatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class DeleteData {

	public static void main(String[] args) {
		try {

			Scanner sc = new Scanner(System.in);

			System.out.println("Enter id here");
			int id = sc.nextInt();

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			PreparedStatement ps = con.prepareStatement("delete from student_info where id=?");

			ps.setFloat(1, id);
			int rs = ps.executeUpdate();

			System.out.println(rs);

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}

	}

}
