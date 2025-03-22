package com.rt.SpringIoc_01;

public class StudentInfo {
	private int roll;
	private String studName;
	private float age;
	private float marks;
	private String address;
	
	
	public StudentInfo(){}

	public StudentInfo(int roll, String studName, float age, float marks, String address) {
		super();
		this.roll = roll;
		this.studName = studName;
		this.age = age;
		this.marks = marks;
		this.address = address;
	}

	public int getRoll() {
		return roll;
	}

	public void setRoll(int roll) {
		this.roll = roll;
	}

	public String getStudName() {
		return studName;
	}

	public void setStudName(String studName) {
		this.studName = studName;
	}

	public float getAge() {
		return age;
	}

	public void setAge(float age) {
		this.age = age;
	}

	public float getMarks() {
		return marks;
	}

	public void setMarks(float marks) {
		this.marks = marks;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
