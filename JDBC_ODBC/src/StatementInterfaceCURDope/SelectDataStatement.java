package StatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectDataStatement {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			Statement st=con.createStatement();	
			
			ResultSet rs=st.executeQuery("select * from student_info where id=101");
			rs.next();

			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString(2));
			System.out.println(rs.getFloat("age"));
			
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

	}

}
