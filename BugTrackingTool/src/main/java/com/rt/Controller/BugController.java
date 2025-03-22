package com.rt.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.Service.BugService;

@Controller
public class BugController {
	
	@Autowired
	BugService bugService;
	
	
	@RequestMapping("/")
public String FirstPage()
{
	return "firstPage";
}
	
	  @RequestMapping("/dashboard")
		public String Admin()
		{
			return "Admin";
		}
	  
	  
	  @RequestMapping("/aboutUs")
			public String AboutUs()
			{
				return "AboutUs";
			}
		  
	  @GetMapping("/login")
	    public String login() {
	        return "login"; // Return the login page
	    }

	 
//    @RequestMapping("/addUser")
//	public String AddUser()
//	{
//		return "AddUser";
//	}

//    @RequestMapping("/addProject")
//	public String AddProject()
//	{
//		return "AddProject";
//	}
//    
  
//    @RequestMapping("/addBug")
//   	public String AddBug()
//   	{
//   		return "AddBug";
//   	}

//    @RequestMapping("/login")
//   	public String Login()
//   	{
//   		return "Login";
//   	}
	
//	  @RequestMapping("/deleteData/{id}" )
//		public String addProject(@RequestParam int id,@ModelAttribute AddUserEntity update, Model m) {
//			boolean isUpdated = bugService.updateUser(update);
//			if (isUpdated) {
//				m.addAttribute("successMsg", "User Updated Successfully...");
//			} else {
//				m.addAttribute("errMsg", "Unable to Update...");
//			}
//
//			return "UserReport";
//		}
		
//	  @RequestMapping("/daleteuser/{id}" )
//		public String Delete(@RequestParam int id, AddUserEntity update, Model m) {
//			boolean isdeleted = bugService.deleteUser(id);
//			if (isdeleted) {
//				m.addAttribute("successMsg", "User deleted Successfully...");
//			} else {
//				m.addAttribute("errMsg", "Unable to deleted...");
//			}
//
//			return "userReport";
//		}
//	  
//	  @RequestMapping(value = "/delete/{userId}", method = RequestMethod.DELETE)
//	    @ResponseBody
//	    public String deleteUser(@PathVariable int userId) {
//	        boolean deleted = bugService.deleteUser(userId);
//	        if (deleted) {
//	            return "User deleted successfully";
//	        } else {
//	            return "Failed to delete user";
//	        }
//	    }
	 
    @RequestMapping("/contactUs")
   	public String ContactUs()
   	{
   		return "ContactUs";
   	}
	
}
