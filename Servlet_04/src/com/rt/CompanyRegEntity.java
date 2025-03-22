package com.rt;

public class CompanyRegEntity {
  private String cname;
  private String owner;
  private String saddress;
  private String city;
  private String state;
  private String zipc;  
  private String ddlist;
  private String email;
  private String phoneno;  
  private String n_Caption;
  private String ind;
  
  
  public CompanyRegEntity(){}


public CompanyRegEntity(String cname, String owner, String saddress, String city, String state, String zipc,
		String ddlist, String email, String phoneno, String n_Caption, String ind) {
	super();
	this.cname = cname;
	this.owner = owner;
	this.saddress = saddress;
	this.city = city;
	this.state = state;
	this.zipc = zipc;
	this.ddlist = ddlist;
	this.email = email;
	this.phoneno = phoneno;
	this.n_Caption = n_Caption;
	this.ind = ind;
}


public String getCname() {
	return cname;
}


public void setCname(String cname) {
	this.cname = cname;
}


public String getOwner() {
	return owner;
}


public void setOwner(String owner) {
	this.owner = owner;
}


public String getSaddress() {
	return saddress;
}


public void setSaddress(String saddress) {
	this.saddress = saddress;
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


public String getN_Caption() {
	return n_Caption;
}


public void setN_Caption(String n_Caption) {
	this.n_Caption = n_Caption;
}


public String getInd() {
	return ind;
}


public void setInd(String ind) {
	this.ind = ind;
}
  
  
}
