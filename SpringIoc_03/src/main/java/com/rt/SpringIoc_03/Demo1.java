package com.rt.SpringIoc_03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Demo1 {

	public static void main(String[] args) {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/java/app.xml");
		Employee emp = (Employee) ctx.getBean("Emp");
		System.out.println(emp.getId() + "   " + emp.getEmpName() + "    " + emp.getSal() + "   " + emp.getDept()
				+ "   " + emp.getAdr().getCity() + "   " + emp.getAdr().getState() + "    " + emp.getAdr().getCountry());
	}
}
