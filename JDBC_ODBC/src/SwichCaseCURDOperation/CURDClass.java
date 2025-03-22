package SwichCaseCURDOperation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;



public class CURDClass {

	
	public static Connection Add( Connection con)
	{
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter Name here");
		String name = sc.next();
		
		System.out.println("Enter Age here");
		float age = sc.nextFloat();
		
		if (con==null){
		MyConnection.myConnection(con);
		try {
			PreparedStatement ps= con.prepareStatement("insert into student_info (`name`,`age` ) values(?,?)");
			ps.setString(1, name);
			ps.setFloat(2, age);
			
			int rs=ps.executeUpdate();
			System.out.println(rs);
			
			con.close();
			
		} catch (SQLException e) {
			System.out.println("Unsuccess Adding Record"+e);
		}
		return con;
		}
	
		return con;

	}
	
	public static Connection Update( Connection con)
	{
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter id here");
		int id = sc.nextInt();

		System.out.println("Enter Name here");
		String name = sc.next();
		if (con==null){
		MyConnection.myConnection(con);
		try {
			PreparedStatement ps=con.prepareStatement("update student_info set name=? where id=?");
			ps.setString(1, name);
			ps.setFloat(2, id);
			
			int rs=ps.executeUpdate();
			System.out.println(rs);
			con.close();

			

		} catch (SQLException e) {
			System.out.println("Unsuccess updating Record"+e);
		}
		return con;

		}
		return con;

		
	}
	public static Connection Delete( Connection con)
	{

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter id here");
		int id = sc.nextInt();

		if (con==null){
		MyConnection.myConnection(con);
		try {
			PreparedStatement ps= con.prepareStatement("delete from student_info where id=?");
			ps.setFloat(1, id);
			
			int rs=ps.executeUpdate();
			System.out.println(rs);
			con.close();

			

		} catch (SQLException e) {
			System.out.println("Unsuccess Deleting Record"+e);
		}
		return con;

		}
	
		return con;

	}
	
	public static Connection Select( Connection con)
	{

		Scanner sc =new Scanner(System.in);
		
		System.out.println("Enter id here");
		int id=sc.nextInt();

		if (con==null){
		MyConnection.myConnection(con);
		try {
			PreparedStatement ps= con.prepareStatement("select * from student_info where id=?");
			ps.setFloat(1, id);
			ResultSet rs=ps.executeQuery();
			rs.next();

			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString(2));
			System.out.println(rs.getFloat("age"));
			
			con.close();

			

		} catch (SQLException e) {
			System.out.println("Unsuccessfull Select Record"+e);
		}
		return con;

		}
		return con;

		
	}
	public static Connection SelectAll( Connection con)
	{

		Scanner sc =new Scanner(System.in);
		
		System.out.println("Enter id here");
		int id=sc.nextInt();

		if (con==null){
		MyConnection.myConnection(con);
		try {
			PreparedStatement ps= con.prepareStatement("select * from student_info where id=?");
			ps.setFloat(1, id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString(2));
			System.out.println(rs.getFloat("age"));
			}
			con.close();

			

		} catch (SQLException e) {
			System.out.println("Unsuccessfull Select Record"+e);
		}
		return con;

		}
		return con;

		
	}

	public static void main(String[] args) {
		     
	}

}
