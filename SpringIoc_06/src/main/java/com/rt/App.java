package com.rt;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    ApplicationContext ctx=new FileSystemXmlApplicationContext("src/main/java/App.xml");
    Emp emp=(Emp) ctx.getBean("Emp");
    System.out.println(emp.getName());
    System.out.println(emp.getId());
    System.out.println(emp.getAdd().getCity());
    
    }
}
