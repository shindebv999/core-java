package PreparedStatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class SelectData {

	public static void main(String[] args) {
		try{
			Scanner sc =new Scanner(System.in);
			
			System.out.println("Enter id here");
			int id=sc.nextInt();
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			PreparedStatement ps=con.prepareStatement("select * from student_info where id=?");	
			ps.setFloat(1, id);
			ResultSet rs=ps.executeQuery();
			rs.next();

			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString(2));
			System.out.println(rs.getFloat("age"));
			
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

	}	}


