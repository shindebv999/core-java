package PreparedStatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class InsertData {

	public static void main(String[] args) {
		try{
			
			Scanner sc = new Scanner(System.in);

			System.out.println("Enter Name here");
			String name = sc.next();
			
			System.out.println("Enter Age here");
			float age = sc.nextFloat();
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			PreparedStatement ps=con.prepareStatement("insert into student_info (`name`,`age` ) values(?,?)");	
		
			ps.setString(1, name);
			ps.setFloat(2, age);
			
			int rs=ps.executeUpdate();
			System.out.println(rs);
			
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

	}

}
