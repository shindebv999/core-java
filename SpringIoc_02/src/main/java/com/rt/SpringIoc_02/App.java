package com.rt.SpringIoc_02;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class App {

	public static void main(String[] args) {
		ApplicationContext ctx = new FileSystemXmlApplicationContext(
				"src/main/java/Demo.xml");

	}

}
