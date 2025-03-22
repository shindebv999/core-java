package com.rt.Entity;

public class AddBugEntity {
 private int bugId;
 private String bugName;
 private String projectName;
 private String testerCode;
 private String bugLevel;
 private String bugPriority;
 private String statusName;
 private String description;
 
 public AddBugEntity(){}
 
public AddBugEntity(int bugId, String bugName, String projectName, String testerCode, String bugLevel,
		String bugPriority, String statusName, String description) {
	super();
	this.bugId = bugId;
	this.bugName = bugName;
	this.projectName = projectName;
	this.testerCode = testerCode;
	this.bugLevel = bugLevel;
	this.bugPriority = bugPriority;
	this.statusName = statusName;
	this.description = description;
}

public int getBugId() {
	return bugId;
}

public void setBugId(int bugId) {
	this.bugId = bugId;
}

public String getBugName() {
	return bugName;
}

public void setBugName(String bugName) {
	this.bugName = bugName;
}

public String getProjectName() {
	return projectName;
}

public void setProjectName(String projectName) {
	this.projectName = projectName;
}

public String getTesterCode() {
	return testerCode;
}

public void setTesterCode(String testerCode) {
	this.testerCode = testerCode;
}

public String getBugLevel() {
	return bugLevel;
}

public void setBugLevel(String bugLevel) {
	this.bugLevel = bugLevel;
}

public String getBugPriority() {
	return bugPriority;
}

public void setBugPriority(String bugPriority) {
	this.bugPriority = bugPriority;
}

public String getStatusName() {
	return statusName;
}

public void setStatusName(String statusName) {
	this.statusName = statusName;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

 
}
