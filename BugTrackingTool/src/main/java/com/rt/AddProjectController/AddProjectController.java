package com.rt.AddProjectController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.Entity.AddProjectEntity;
import com.rt.Service.BugService;

@Controller
public class AddProjectController {
	@Autowired
	BugService bugService;
	
	 @RequestMapping("/addProject")
		public String AddProject()
		{
			return "AddProject";
		}
	    
		@RequestMapping("/add_Project" )
		public String addProject(@ModelAttribute AddProjectEntity add, Model m,HttpServletRequest req) {
			String user=(String) req.getSession().getAttribute("user_Name");
			boolean isAdded = bugService.addProject(add,user);
			if (isAdded) {
				m.addAttribute("successMsg", "User Added Successfully...");
			} else {
				m.addAttribute("errMsg", "Unable to Add...");
			}

			return "AddProject";
		}
		
		@GetMapping("/getProjectReportById/{projectId}")
	    @ResponseBody
	    public AddProjectEntity getBugReportById(@PathVariable int projectId) {
	        // Assuming bugService is your service class to fetch user data
			AddProjectEntity projectList = bugService.getProjectReportById(projectId);
	        return projectList; // Spring will automatically serialize it to JSON
	    }
	 
	  // Update User mapping
	    @GetMapping("/updateProjectReport")
	    public String updateProject(@ModelAttribute("project") AddProjectEntity project, Model m) {
	    	
	    	boolean isUpdated = bugService.updateProject(project);
	        if (isUpdated) {
	            m.addAttribute("successMsg", "project Details updated successfully");
	        } else {
	            m.addAttribute("errMsg", "Unable to update project Details");
	        }
	        return "ProjectReport"; // Redirect to the user list page after updating
	    }

/*
	 @DeleteMapping("/deleteProjectReport/{projectId}")
	    public String deleteProject(@PathVariable int projectId ,Model m) {
	        // Assuming bugService is your service class to delete the bug
	        boolean isDeleted = bugService.deleteProject(projectId);
	        if (isDeleted) {
	            m.addAttribute("successMsg", "project Details deleted successfully");
	        } else {
	            m.addAttribute("errMsg", "Unable to delete project Details");
	        }
	        return "redirect:/ProjectReport"; // Redirect to the user report page after deletion
	        }*/
	    
	    @DeleteMapping("/deleteProjectReport/{projectId}")
	    public ResponseEntity<String> deleteProject(@PathVariable int projectId) {
	        // Assuming bugService is your service class to delete the project
	        boolean isDeleted = bugService.deleteProject(projectId);
	        
	        if (isDeleted) {
	            return ResponseEntity.noContent().build(); // HTTP 204 for successful deletion
	        } else {
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error deleting project report");
	        }
	    }

	

		
		
		@RequestMapping("/projectReport")
		public String ProjectReport(Model m) {
			
			List<AddProjectEntity> list = bugService.AllProjectReport();

			m.addAttribute("projectList", list);

			return "ProjectReport";
		}

}
