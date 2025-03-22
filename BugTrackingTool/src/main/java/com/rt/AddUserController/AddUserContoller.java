package com.rt.AddUserController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.Entity.AddUserEntity;
import com.rt.Service.BugService;


@Controller

public class AddUserContoller {
	@Autowired
	BugService bugService;
	
	
	   @RequestMapping("/addUser")
		public String AddUser()
		{
			return "AddUser";
		}

		@RequestMapping("/add_User" )
		public String Register(@ModelAttribute AddUserEntity add, Model m,HttpServletRequest req) {
			String user = (String) req.getSession().getAttribute("userName");

			boolean isAdded = bugService.AddUser(add,user);
			if (isAdded) {
				m.addAttribute("successMsg", "User Added Successfully...");
			} else {
				m.addAttribute("errMsg", "Unable to Add...");
			}

			return "AddUser";
		}
	
		 
		 @DeleteMapping("/deleteUser/{userId}")
		    public String deleteUser(@PathVariable int userId, Model m) {
		        boolean isDeleted = bugService.deleteUser(userId);
		        if (isDeleted) {
		            m.addAttribute("successMsg", "User deleted successfully");
		        } else {
		            m.addAttribute("errMsg", "Unable to delete user");
		        }
		        return "redirect:/userReport"; // Redirect to the user report page after deletion
		 }

		 
			 
		 @GetMapping("/getUserById/{userId}")
		    @ResponseBody
		    public AddUserEntity getUserById(@PathVariable int userId) {
		        // Assuming bugService is your service class to fetch user data
		        AddUserEntity userList = bugService.getUserById(userId);
		        return userList; // Spring will automatically serialize it to JSON
		    }



		    // Update User mapping
		    @GetMapping("/updateUser")
		    public String updateUser(@ModelAttribute("user") AddUserEntity user, Model m) {
		    	boolean isUpdated = bugService.updateUser(user);
		        if (isUpdated) {
		            m.addAttribute("successMsg", "User updated successfully");
		        } else {
		            m.addAttribute("errMsg", "Unable to update user");
		        }
		        return "UserReport"; // Redirect to the user list page after updating
		    }

		/* @GetMapping("/updateUser")
		 @ResponseBody
		 public ResponseEntity<AddUserEntity> updateUser(@ModelAttribute("user") AddUserEntity user) {
		     boolean isUpdated = bugService.updateUser(user);
		     if (isUpdated) {
		         return ResponseEntity.ok(user); // Return the updated user data
		     } else {
		         return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
		     }
		 }*/

		 
		


			@RequestMapping("/userReport")
			public String UserReport(Model m) {
				
				List<AddUserEntity> list = bugService.AllUsersReport();

				m.addAttribute("userList", list);

				return "UserReport";
			}
			
}
