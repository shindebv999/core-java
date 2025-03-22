package CURDJDBCOperations;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MysqlCurdOperations {
		 
		public static void main(String[] args) throws Exception  {
			Class.forName("com.mysql.jdbc.Driver");
			String  url="jdbc:mysql://localhost:3306/student";
			String username="root";
			String password="root";
			Connection con =DriverManager.getConnection(url,username,password);
	 
			Statement stmt =con.createStatement();
			ResultSet rs;
			PreparedStatement st;
	 
			String qry="";
			int id,age,choice;
			String name,city;
	 
			Scanner in = new Scanner(System.in);
			Scanner str = new Scanner(System.in);
	 
			while(true)
			{
				System.out.println("MySQL Java CRUD Operation");
				System.out.println("1. Insert");
				System.out.println("2. Update");
				System.out.println("3. Delete");
				System.out.println("4. Select");
				System.out.println("5. SelectAll");
				System.out.println("6. Exit");
				System.out.print("Enter a choice: ");
				choice = in.nextInt();
				System.out.println("-----------------------------------------");
				switch(choice){
				case 1:
					System.out.println("1. Insert New Data");
	 
					System.out.println("Enter Name : ");
					name=str.nextLine();
					System.out.println("Enter Age : ");
					age=in.nextInt();
					
	 
					qry="insert into student_info (name,age) values(?,?)";
					st= con.prepareStatement(qry);
					st.setString(1, name);
					st.setInt(2, age);
					
	 
					st.executeUpdate();
					System.out.println("Data Insert Success");
	 
					break;
				case 2:
					System.out.println("2. Updating a Data");
	 
					System.out.println("Enter ID : ");
					id=in.nextInt();
					System.out.println("Enter Name : ");
					name=str.nextLine();
				
					
	 
					qry="update student_info set name=? where id=?";
					st= con.prepareStatement(qry);
	 
					st.setString(1, name);
					st.setInt(2, id);
					st.executeUpdate();
					System.out.println("Data Update Success");
	 
					break;
				case 3:
					System.out.println("3. Deleting a Data");
					System.out.println("Enter ID : ");
					id=in.nextInt();
	 
					qry="delete from student_info where id=?";
					st= con.prepareStatement(qry);
					st.setInt(1, id);
	 
					st.executeUpdate();
					System.out.println("Data Deleted Success");
	 
					break;
				case 4:
					System.out.println("4. Print all Records");
					qry="SELECT * from student_info where id=102 ";
					rs=stmt.executeQuery(qry);
					rs.next();
					
						id=rs.getInt("id");
						name=rs.getString("name");
						age=rs.getInt("age");
						
	 
						System.out.print(id+" ");
						System.out.print(name+" ");
						System.out.print(age+" ");
				
	 
					
					break;
				case 5:
					System.out.println("5. Print all Records");
					qry="SELECT id,name,age from student_info ";
					rs=stmt.executeQuery(qry);
					while(rs.next())
					{
						id=rs.getInt("id");
						name=rs.getString("name");
						age=rs.getInt("age");
						
	 
						System.out.print(id+" ");
						System.out.print(name+" ");
						System.out.print(age+" ");
				
	 
					}
					break;
				case 6:
					System.out.println("Thank You");
					System.exit(0);
					break;
				default:
					System.out.println("Invalid Selection");
					break;
				}
				System.out.println("-----------------------------------------");
			}
		}
	 
	}
	 

