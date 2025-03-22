package StatementInterfaceCURDope;
import java.sql.*;
public class SelectDataFromTable {

	public static void main(String[] args) throws Exception {
	String url="jdbc:mysql://localhost:3306/student";
	String username="root";
	String password="root";
	String Query="select name from student where id=101";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,username,password);
	Statement st=con.createStatement();	
	ResultSet rs=st.executeQuery(Query);
	
	rs.next();
	String name=rs.getString("name");
	
	System.out.println(name);
	st.close();
	con.close();
	}

}
