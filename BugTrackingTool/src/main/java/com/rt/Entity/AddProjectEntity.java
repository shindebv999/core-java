package com.rt.Entity;

public class AddProjectEntity {
 private int projectId;
 private String projectName;
 private String submissionDate;
 private String projectDuration;
 private String clientName;
 private String clientAddress;
 private String phoneNo;
 private String emailId;
 private String departmentName;
 private String description;
 
 public AddProjectEntity(){}
 
public AddProjectEntity(int projectId, String projectName, String submissionDate, String projectDuration, String clientName,
		String clientAddress, String phoneNo, String emailId, String departmentName, String description) {
	super();
	this.projectId = projectId;
	this.projectName = projectName;
	this.submissionDate = submissionDate;
	this.projectDuration = projectDuration;
	this.clientName = clientName;
	this.clientAddress = clientAddress;
	this.phoneNo = phoneNo;
	this.emailId = emailId;
	this.departmentName = departmentName;
	this.description = description;
}

public int getProjectId() {
	return projectId;
}

public void setProjectId(int projectId) {
	this.projectId = projectId;
}

public String getProjectName() {
	return projectName;
}

public void setProjectName(String projectName) {
	this.projectName = projectName;
}

public String getSubmissionDate() {
	return submissionDate;
}

public void setSubmissionDate(String submissionDate) {
	this.submissionDate = submissionDate;
}

public String getProjectDuration() {
	return projectDuration;
}

public void setProjectDuration(String projectDuration) {
	this.projectDuration = projectDuration;
}

public String getClientName() {
	return clientName;
}

public void setClientName(String clientName) {
	this.clientName = clientName;
}

public String getClientAddress() {
	return clientAddress;
}

public void setClientAddress(String clientAddress) {
	this.clientAddress = clientAddress;
}

public String getPhoneNo() {
	return phoneNo;
}

public void setPhoneNo(String phoneNo) {
	this.phoneNo = phoneNo;
}

public String getEmailId() {
	return emailId;
}

public void setEmailId(String emailId) {
	this.emailId = emailId;
}

public String getDepartmentName() {
	return departmentName;
}

public void setDepartmentName(String departmentName) {
	this.departmentName = departmentName;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}
 
 
 
}
