package com.rt.SpringIoc_02;

public class Employee {
	private int id;
	private String empName;
	private float sal;
	private float dept;
	private String adr;
	
	
	public Employee(int id, String empName, float sal, float dept, String adr) {
		super();
		this.id = id;
		this.empName = empName;
		this.sal = sal;
		this.dept = dept;
		this.adr = adr;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmpName() {
		return empName;
	}


	public void setEmpName(String empName) {
		this.empName = empName;
	}


	public float getSal() {
		return sal;
	}


	public void setSal(float sal) {
		this.sal = sal;
	}


	public float getDept() {
		return dept;
	}


	public void setDept(float dept) {
		this.dept = dept;
	}


	public String getAdr() {
		return adr;
	}


	public void setAdr(String adr) {
		this.adr = adr;
	}

	 
}
