package SwichCaseCURDOperation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

public class SwitchCase {

	
		

		private static Connection con;

		public static void main(String[] args) {
		
		

		
		System.out.println("ALL CURD OPERATIOS HERE");
		System.out.println("1  .Insert");
		System.out.println("2  .Update");
		System.out.println("3  .Delete");
		System.out.println("4  .Select");
		System.out.println("5  .SelectAll");
		System.out.println("Choose Any Operation..");
		
		Scanner sc = new Scanner(System.in);
        int  Choice=sc.nextInt();
        
        System.out.println("...........................................");
        
        switch(Choice){
        case 1:
        	System.out.println("1  .Insert");
        	CURDClass.Add( con);
        	  break;
        	  
        case 2:
        	System.out.println("2  .Update");
        	CURDClass.Update(con);
        	  break;
        	
        case 3:
        	System.out.println("3  .Delete");
        	CURDClass.Delete(con);
        	  break;
        	  

        case 4:
        	System.out.println("4  .Select");
        	CURDClass.Select(con);
        	  break;
        	  

        case 5:
        	System.out.println("5  .SelectAll");
        	CURDClass.SelectAll(con);
        	  break;
        	  
        default:
        	 System.out.println("Default Selection");
             break;
        	
        	
        }
	}

}
