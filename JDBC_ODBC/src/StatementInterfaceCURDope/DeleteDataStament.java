package StatementInterfaceCURDope;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DeleteDataStament {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			Statement st=con.createStatement();	
			
			int rs=st.executeUpdate("delete from student_info where id=102");

			System.out.println(rs);
			
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

	}

}
