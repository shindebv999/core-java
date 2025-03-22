package com.rt.SpringIoc_01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

class App {
	public static void main(String[] args) {
		System.out.println("Hello World!");
		ApplicationContext ctx = new FileSystemXmlApplicationContext(
				"src/main/java/com/rt/SpringIoc_01/ApplicationContext.xml");
		StudentInfo st=(StudentInfo) ctx.getBean("stud");
		System.out.println(st.getRoll());
		System.out.println(st.getStudName());
		System.out.println(st.getAge());
		System.out.println(st.getMarks());
		System.out.println(st.getAddress());
	}
}
