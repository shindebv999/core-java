package StatementInterfaceCURDope;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class InsertDataStatement {

	
	
	public static void main(String[] args )   {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			Statement st=con.createStatement();	
			
			int rs=st.executeUpdate("insert into student_info (`name`,`age` ) values('Shruti'4500)");

			System.out.println(rs);
			
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

}
}