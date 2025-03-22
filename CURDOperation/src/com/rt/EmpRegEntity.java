package com.rt;

public class EmpRegEntity {
	private int id;
	private String empName;
	private String empLname;
	private String city;
	private String state;
	private String zipc;
	private String ddlist;
	private String email;
	private String phoneno;
	
	public EmpRegEntity(){}

	public EmpRegEntity(int id, String empName, String empLname, String city, String state, String zipc, String ddlist,
			String email, String phoneno) {
		super();
		this.id = id;
		this.empName = empName;
		this.empLname = empLname;
		this.city = city;
		this.state = state;
		this.zipc = zipc;
		this.ddlist = ddlist;
		this.email = email;
		this.phoneno = phoneno;
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

	public String getEmpLname() {
		return empLname;
	}

	public void setEmpLname(String empLname) {
		this.empLname = empLname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipc() {
		return zipc;
	}

	public void setZipc(String zipc) {
		this.zipc = zipc;
	}

	public String getDdlist() {
		return ddlist;
	}

	public void setDdlist(String ddlist) {
		this.ddlist = ddlist;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

   
		
	
	
}
