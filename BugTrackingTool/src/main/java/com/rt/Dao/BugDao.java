package com.rt.Dao;

import java.util.List;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.Entity.AddBugEntity;
import com.rt.Entity.AddProjectEntity;
import com.rt.Entity.AddUserEntity;
import com.rt.RowMapper.BugRowMapper;
import com.rt.RowMapper.ProjectRowMapper;
import com.rt.RowMapper.UserRowMapper;

@Repository
public class BugDao {
	
	@Autowired
	JdbcTemplate template;
	
	public boolean Login(String userName, String password) {
		try {

			Object[] args = { userName,password};
			int data = template.update("insert into login_user(`UserName`,`Password`) values(?,?)",args);

			if (data == 1) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;
	}

	public boolean Login(AddUserEntity add, String user) {
		try {
			Object[] args = { add.getPrefix(),add.getEmployeeStatus(),add.getDepartment(),add.getFirstName(),add.getMiddleName(),add.getLastName(),add.getGender(),add.getDate_Of_Birth(),add.getCountry(),add.getMobileNo(),add.getUserName(),add.getPassword(),add.getEmailId(),add.getCity(),add.getState(),user};
			int data = template.update(
					"insert into add_user(`prefix`,`employeeStatus`,`department`,`firstName`,`middleName`,`lastName`,`gender`,`date_Of_Birth`,`country`,`mobileNo`,`userName`,`password`,`emailId`,`city`,`state`,`role`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
					args);
			System.out.println(data);

			if (data == 1) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<AddUserEntity> AllUsersReport() {

		List<AddUserEntity> list = null;
		try {
			
			Object[] args = {  };
			list = template.query("select * from add_user", args,new UserRowMapper());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
				
	}



	public boolean add_Project(AddProjectEntity add, String user) {
		try {
			  Object[] args = {add.getProjectName(),add.getSubmissionDate(), add.getProjectDuration(), add.getClientName(),add.getClientAddress(), add.getPhoneNo(),add.getEmailId(),add.getDepartmentName(),add.getDescription(), user  };
			 int data = template.update(
			            "insert into add_project(`projectName`,`submissionDate`,`projectDuration`,`clientName`,`clientAddress`,`phoneNo`,`emailId`,`departmentName`,`description`,`user_Name`) values(?,?,?,?,?,?,?,?,?,?)",
			            args
			        );
			        System.out.println(data);


			if (data == 1) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<AddProjectEntity> AllProjectReport() {
		List<AddProjectEntity> list = null;
		try {
			
			Object[] args = {  };
			list = template.query("select * from add_project", args,new ProjectRowMapper());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean AddBug(AddBugEntity add, String user) {
		try {
			Object[] args = {add.getBugName(),add.getProjectName(),add.getTesterCode(),add.getBugLevel(),add.getBugPriority(),add.getStatusName(),add.getDescription(),user};
			int data = template.update(
					"insert into add_bug(`bugName`,`projectName`,`testerCode`,`bugLevel`,`bugPriority`,`statusName`,`description`,`Role`) values(?,?,?,?,?,?,?,?)",
					args);
			System.out.println(data);

			if (data == 1) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<AddBugEntity> AllBugReport() {
		List<AddBugEntity> list = null;
		try {
			
			Object[] args = {  };
			list = template.query("select * from add_bug", args,new BugRowMapper());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public boolean updateUser(AddUserEntity update) {
		try {

			Object[] args = { update.getPrefix(),update.getEmployeeStatus(),update.getDepartment(),update.getFirstName(),update.getMiddleName(),update.getLastName(),update.getGender(),update.getDate_Of_Birth(),update.getCountry(),update.getMobileNo(),update.getUserName(),update.getPassword(),update.getEmailId(),update.getCity(),update.getState(),update.getId()};
					int data = template.update(
					"update add_user set prefix = ?, employeeStatus = ?, department = ?, firstName = ?, middleName = ?, lastName = ?, gender=?, date_Of_Birth=?, country=?, mobileNo=? ,userName=?, password=?, emailId=?, city=?, state=?  where id = ?",
					args);

			if (data == 1) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;

	}
    public boolean deleteUser(int id) {
        try {
            Object[] args = { id };
            int data = template.update("delete from add_user where id = ?", args);

            if (data == 1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public AddUserEntity getUserById(int id) {
        AddUserEntity user = null;
        
        try {
            Object[] args = { id };
            user = template.queryForObject("select * from add_user where id = ?", args, new UserRowMapper());
            System.out.println(user);
        } catch (DataAccessException e) {
            // Handle the case where no user was found
            System.out.println("No user found with ID: " + id);
        } catch (Exception e) {
            e.printStackTrace(); // Handle other exceptions here
        }
        System.out.println(user);
        
        return user;
    }

	public boolean deleteBug(int bugId) {
		try {
            Object[] args = { bugId };
            int data = template.update("delete from add_bug where bugId = ?", args);

            if (data == 1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return false;
	}

	public AddBugEntity getBugById(int bugId) {
		AddBugEntity bugList = null;
        
        try {
            Object[] args = { bugId };
            bugList = template.queryForObject("select * from add_bug where bugId = ?", args, new BugRowMapper());
            System.out.println(bugList);
        } catch (DataAccessException e) {
            // Handle the case where no user was found
            System.out.println("No bug found with ID: " + bugId);
        } catch (Exception e) {
            e.printStackTrace(); // Handle other exceptions here
        }
        System.out.println(bugList);
        
        return bugList;
    }

	public boolean updateBug(AddBugEntity bug) {
		try {

			Object[] args = { bug.getBugName(),bug.getProjectName(),bug.getTesterCode(),bug.getBugLevel(),bug.getBugPriority(),bug.getStatusName(),bug.getDescription(),bug.getBugId()};
					int data = template.update(
					"UPDATE add_bug SET bugName = ?,  projectName = ?,  testerCode = ?,  bugLevel = ?, bugPriority = ?,  statusName = ?,  description = ? WHERE bugId = ?;",args);

			if (data == 1) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;
	}

	public AddProjectEntity getProjectReportById(int projectId) {
		AddProjectEntity projectList = null;
        
        try {
            Object[] args = { projectId };
            projectList = template.queryForObject("select * from add_project where projectId = ?", args, new ProjectRowMapper());
            System.out.println(projectList);
        } catch (DataAccessException e) {
            // Handle the case where no user was found
            System.out.println("No project found with ID: " + projectId);
        } catch (Exception e) {
            e.printStackTrace(); // Handle other exceptions here
        }
        System.out.println(projectList);
        
        return projectList;
    }

	public boolean updateProject(AddProjectEntity project) {
		try {

			Object[] args = { project.getProjectName(), project.getSubmissionDate(), project.getProjectDuration(), project.getClientName(),project.getClientAddress(),project.getPhoneNo(),project.getEmailId(),project.getDepartmentName(),project.getDescription(),project.getProjectId()
				};

					int data = template.update(
					"update add_project set projectName = ?, submissionDate = ?, projectDuration = ?, clientName = ?, clientAddress = ?, phoneNo = ?, emailId=? ,departmentName=?, description=? where projectId = ?",
					args);

			if (data == 1) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;
	}

	public boolean deleteProject(int projectId) {
		try {
            Object[] args = { projectId };
            int data = template.update("delete from add_project where projectId = ?", args);

            if (data == 1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
          
        }
		return false;
	}

	
}		
	
	
	
	
	
//	public boolean Loggedin(String userName, String password) {
//		try{
//			Object[] args = { userName,password };
//	         int data=template.update("select count(*) from login_user where UserName=? and Password=?",args);
//	         if(data==1)
//	         {
//	        	 return true;
//	
//	         }
//			}
//			catch (Exception e) {
//				e.printStackTrace();
//				return false;
//	
//			}
//			
//			return false;
//	
//	}

