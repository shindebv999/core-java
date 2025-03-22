package com.rt.AddBugController;

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

import com.rt.Entity.AddBugEntity;
import com.rt.Entity.AddUserEntity;
import com.rt.Service.BugService;

@Controller
public class AddBugController {

	@Autowired
	BugService bugService;
	
	  @RequestMapping("/addBug")
	   	public String AddBug()
	   	{
	   		return "AddBug";
	   	}

	@RequestMapping("/add_Bug")
	public String AddBug(@ModelAttribute AddBugEntity add, Model m, HttpServletRequest req) {
		String user = (String) req.getSession().getAttribute("userName");
		boolean isAdded = bugService.AddBug(add, user);
		if (isAdded) {
			m.addAttribute("successMsg", "User Added Successfully...");
		} else {
			m.addAttribute("errMsg", "Unable to Add...");
		}

		return "AddBug";
	}
	 
	 @GetMapping("/getBugReportById/{bugId}")
	    @ResponseBody
	    public AddBugEntity getBugReportById(@PathVariable int bugId) {
	        // Assuming bugService is your service class to fetch user data
		 AddBugEntity bugList = bugService.getBugById(bugId);
	        return bugList; // Spring will automatically serialize it to JSON
	    }
	 
	  // Update User mapping
	    @GetMapping("/updateBugReport")
	    public String updateUser(@ModelAttribute("bug") AddBugEntity bug, Model m) {
	    	
	    	boolean isUpdated = bugService.updateBug(bug);
	        if (isUpdated) {
	            m.addAttribute("successMsg", "Bug updated successfully");
	        } else {
	            m.addAttribute("errMsg", "Unable to update Bug");
	        }
	        return "BugReport"; // Redirect to the user list page after updating
	    }


	/* @DeleteMapping("/deleteBug/{bugId}")
	    public String deleteBug(@PathVariable int bugId ,Model m) {
	        // Assuming bugService is your service class to delete the bug
	        boolean isDeleted = bugService.deleteBug(bugId);
	        if (isDeleted) {
	            m.addAttribute("successMsg", "User deleted successfully");
	        } else {
	            m.addAttribute("errMsg", "Unable to delete user");
	        }
	        return "redirect:/BugReport"; // Redirect to the user report page after deletion
	        }*/
	    
	    @DeleteMapping("/deleteBug/{bugId}")
	    public ResponseEntity<String> deleteBug(@PathVariable int bugId) {
	        boolean isDeleted = bugService.deleteBug(bugId);
	        if (isDeleted) {
	            return ResponseEntity.noContent().build(); // HTTP 204 for successful deletion
	        } else {
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error deleting bug report");
	        }
	    }
	

	
	
	
	@RequestMapping("/bugReport")
	public String ProjectReport(Model m) {
		
		List<AddBugEntity> list = bugService.AllbugReport();

		m.addAttribute("bugList", list);

		return "BugReport";
	}
	
	

}
