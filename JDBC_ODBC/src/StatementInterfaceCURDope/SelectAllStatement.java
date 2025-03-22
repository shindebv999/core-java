package StatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectAllStatement {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			Statement st=con.createStatement();	
			
			ResultSet rs=st.executeQuery("select * from student_info");
			
		    while(rs.next()){
			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString(2));
			System.out.println(rs.getFloat("age"));
			System.out.println("............................");
		}
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

	}

}
