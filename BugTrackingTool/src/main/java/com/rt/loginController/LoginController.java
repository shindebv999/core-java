package com.rt.loginController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.Service.BugService;




@Controller
public class LoginController {
	
	@Autowired
	BugService bugService;
	
	 @RequestMapping("/login")
	   	public String Login()
	   	{
	   		return "Login";
	   	}


//
//		@RequestMapping("/alogin")
//		public String Login(@RequestParam String userName,@RequestParam String password, Model m) {
//	
//			boolean isAdded = bugService.Login(userName,password);
//			if (isAdded){ 
//				m.addAttribute("successMsg", "Login Successfully...");
//			}
//		else {
//				m.addAttribute("errMsg", "Invalid UserName and Password");
//			}
//
//			return "Admin";
//		}

	
//	
//	 @RequestMapping("/alogin")
//		public String Loggedin(@RequestParam String userName,@RequestParam String password,HttpSession session,Model m)
//		{
//		 
//		 boolean isLoggedIn = bugService.Loggedin(userName,password);
//
//		 if (isLoggedIn) {
//				m.addAttribute("successMsg", "Employee Login Successfully...");
//			} else {
//				m.addAttribute("errMsg","Invalid cred...");
//				return "firstPage" ;
//			}						
//			    
//			return "Admin";
//		}

}
