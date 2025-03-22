package PreparedStatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class UpdateData {

	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(System.in);

			System.out.println("Enter id here");
			int id = sc.nextInt();

			System.out.println("Enter Name here");
			String name = sc.next();

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			PreparedStatement ps = con.prepareStatement("update student_info set name=? where id=?");
			ps.setString(1, name);
			ps.setInt(2, id);

			int rs = ps.executeUpdate();

			System.out.println(rs);

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}

	}

}
