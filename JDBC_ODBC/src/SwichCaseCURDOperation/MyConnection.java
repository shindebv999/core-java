package SwichCaseCURDOperation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {
 Connection con=null;
	
	
	public static Connection myConnection(Connection con) {
		 try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
		
			
		} catch (SQLException e) {
		System.out.println(e);
		}
		return con;
		
	}

}
