package com.rt.SpringIoc_05;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class App {
	public static void main(String[] args) {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/java/Ioc_05.xml");
		EmployeeSpringIoc Emp = (EmployeeSpringIoc) ctx.getBean("emp");

		// EmployeeSpringIoc Emp1 = (EmployeeSpringIoc) ctx.getBean("emp");
		// EmployeeSpringIoc Emp2= (EmployeeSpringIoc) ctx.getBean("emp");
		// System.out.println(emp1.hashCode());//mention in .xml file:
		// scope="prototype" then each time return new object
		// System.out.println(emp2.hashCode());

		//Emp.Welcome();
		System.out.println(".............................................");
		System.out.println(Emp.getId());
		System.out.println(Emp.getName());
		System.out.println(Emp.getSalary());
		System.out.println(Emp.getDept());
	}
}
