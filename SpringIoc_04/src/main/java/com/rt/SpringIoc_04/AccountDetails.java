package com.rt.SpringIoc_04;

public class AccountDetails {
	private int accountNo;
	private String banckName;
	
	public AccountDetails(){}
	
	public AccountDetails(int accountNo, String banckName) {
		super();
		this.accountNo = accountNo;
		this.banckName = banckName;
	}


	public int getAccountNo() {
		return accountNo;
	}


	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}


	public String getBanckName() {
		return banckName;
	}


	public void setBanckName(String banckName) {
		this.banckName = banckName;
	}
	
	
	
	
}
