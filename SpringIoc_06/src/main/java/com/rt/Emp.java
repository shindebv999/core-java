package com.rt;

public class Emp {
 private int id;
 private String name;
 private float sal;
 private Address Add;
 
 
 public Emp(){}
 
public Emp(int id, String name, float sal, Address add) {
	super();
	this.id = id;
	this.name = name;
	this.sal = sal;
	Add = add;
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
public float getSal() {
	return sal;
}
public void setSal(float sal) {
	this.sal = sal;
}
public Address getAdd() {
	return Add;
}
public void setAdd(Address add) {
	Add = add;
}
 
 
 
 
 
 
}
