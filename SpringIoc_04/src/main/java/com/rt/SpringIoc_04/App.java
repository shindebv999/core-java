package com.rt.SpringIoc_04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
      ApplicationContext ctx= new FileSystemXmlApplicationContext("src/main/java/Ioc_03.xml");
      Employee emp=(Employee) ctx.getBean("Emp");
      System.out.println("Employee id :  "+emp.getId());
      System.out.println("Employee Name:  "+emp.getEmpName());
      System.out.println("Employee Dept.:  "+emp.getDept());
      System.out.println("Employee Salary: "+emp.getSal());
      System.out.println("Employee city: "+emp.getAdr().getCity());
      System.out.println("Employee State: "+emp.getAdr().getState());
      System.out.println("Employee Country: "+emp.getAdr().getCountry());
      System.out.println("Employee AccountNo.:  "+emp.getAc().getAccountNo());
      System.out.println("Employee BankName:  "+emp.getAc().getBanckName());
      
    }
}
