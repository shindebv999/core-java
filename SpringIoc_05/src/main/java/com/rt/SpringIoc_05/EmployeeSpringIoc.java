package com.rt.SpringIoc_05;

public class EmployeeSpringIoc {
    private int id;
	private String name;
	private float salary;
	private String dept;
	
	public EmployeeSpringIoc(){}
	
	public EmployeeSpringIoc(int id, String name, float salary, String dept) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
		this.dept = dept;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}
	
	public void Welcome(){
		System.out.println("Welcome..."+name);
	}
	
}
