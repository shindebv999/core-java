package com.rt.SpringIoc_04;


public class Employee {
	private int id;
	private String empName;
	private float sal;
	private String dept;
	private Address adr;
	private AccountDetails ac;
	
	public Employee(){}
	
	public Employee(int id, String empName, float sal, String dept, Address adr, AccountDetails ac) {
		super();
		this.id = id;
		this.empName = empName;
		this.sal = sal;
		this.dept = dept;
		this.adr = adr;
		this.ac = ac;
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

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Address getAdr() {
		return adr;
	}

	public void setAdr(Address adr) {
		this.adr = adr;
	}

	public AccountDetails getAc() {
		return ac;
	}

	public void setAc(AccountDetails ac) {
		this.ac = ac;
	}

	
	
}
