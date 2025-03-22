package StoredProcedure;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class JDBCStoredProcedure {

	public static void insert() {
		try {

			Scanner sc = new Scanner(System.in);

			System.out.println("Enter Name here");
			String name = sc.next();

			System.out.println("Enter Age here");
			float age = sc.nextFloat();

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			CallableStatement cs = con.prepareCall("{call addStudent(?,?)}");

			cs.setString(1, name);
			cs.setFloat(2, age);

			int rs = cs.executeUpdate();
			System.out.println(rs);

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}
	}

	public static void update() {
		try {
			Scanner sc = new Scanner(System.in);

			System.out.println("Enter id here");
			int id = sc.nextInt();

			System.out.println("Enter Name here");
			String name = sc.next();

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			CallableStatement cs = con.prepareCall("{call updateData(?,?)}");
			cs.setInt(1, id);
			cs.setString(2, name);

			int rs = cs.executeUpdate();

			System.out.println(rs);

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}

	}

	public static void delete() {
		try {

			Scanner sc = new Scanner(System.in);

			System.out.println("Enter id here");
			int id = sc.nextInt();

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			CallableStatement cs = con.prepareCall("{call deleteData(?)}");

			cs.setFloat(1, id);
			int rs = cs.executeUpdate();

			System.out.println(rs);

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}
	}

	public static void select() {
		try {
			Scanner sc = new Scanner(System.in);

			System.out.println("Enter id here");
			int id = sc.nextInt();

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");

			CallableStatement cs = con.prepareCall("{call selectData(?)}");
			cs.setFloat(1, id);
			ResultSet rs = cs.executeQuery();
			rs.next();

			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString(2));
			System.out.println(rs.getFloat("age"));

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}
	}

	

	

	public static void main(String[] args) {
		// JDBCStoredProcedure.insert();
		// JDBCStoredProcedure.update();
		// JDBCStoredProcedure.delete();
		//JDBCStoredProcedure.select();
	}

}
