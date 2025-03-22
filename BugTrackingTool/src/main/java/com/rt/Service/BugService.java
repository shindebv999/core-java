package com.rt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.Dao.BugDao;
import com.rt.Entity.AddBugEntity;
import com.rt.Entity.AddProjectEntity;
import com.rt.Entity.AddUserEntity;


@Service
public class BugService {
	@Autowired
	BugDao bugDao;


	public boolean Login(String userName, String password) {
		return bugDao.Login(userName,password);
		}


	public boolean AddUser(AddUserEntity add, String user) {
		return bugDao.Login(add,user);
	}


	public List<AddUserEntity> AllUsersReport() {
		return bugDao.AllUsersReport();
	}


	public boolean addProject(AddProjectEntity add, String user) {		
		return bugDao.add_Project(add,user);
	}


	public List<AddProjectEntity> AllProjectReport() {		
		return bugDao.AllProjectReport();
	}



	public boolean AddBug(AddBugEntity add, String user) {
		return bugDao.AddBug(add,user);
	}


	public List<AddBugEntity> AllbugReport() {
		return bugDao.AllBugReport();
	}


	public boolean updateUser(AddUserEntity update) {
		// TODO Auto-generated method stub
		return bugDao.updateUser(update);
	}


	  public boolean deleteUser(int id) {
	        return bugDao.deleteUser(id);
	    }


	public AddUserEntity getUserById(int id) {
		return bugDao.getUserById(id);
	
	}


	public boolean deleteBug(int bugId) {
		 return bugDao.deleteBug(bugId);
	}


	public AddBugEntity getBugById(int bugId) {
		return bugDao.getBugById(bugId);
	}


	public boolean updateBug(AddBugEntity bug) {
		return bugDao.updateBug(bug);

	}


	public AddProjectEntity getProjectReportById(int projectId) {
		return bugDao.getProjectReportById(projectId);
	}


	public boolean updateProject(AddProjectEntity project) {
		return bugDao.updateProject(project);
	}


	public boolean deleteProject(int projectId) {
		 return bugDao.deleteProject(projectId);	}





//	public boolean Loggedin(String userName, String password) {
//		return bugDao.Loggedin(userName,password);
//	}


}
