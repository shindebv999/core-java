package StoredProcedure;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class StoredProcedureInJdbc {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
			
			Statement st=con.createStatement();	
			st.addBatch("insert into student_info(`name`,`age`)values('Neeta',34)");
			st.addBatch("insert into student_info(`name`,`age`)values('pooja',23)");
			st.addBatch("insert into student_info(`name`,`age`)values('sneha',21)");
			int[] a=st.executeBatch();
			System.out.println(a);
			con.close();
			
			}catch(Exception e){
				
				System.out.println(e);
			}
		

	}

}
