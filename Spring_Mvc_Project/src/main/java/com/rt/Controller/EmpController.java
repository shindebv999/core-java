package com.rt.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.Entity.EmpEntity;
import com.rt.Service.EmpService;

@Controller
public class EmpController {
	@Autowired
	EmpService empService;
	
	@RequestMapping("/")
	public String Home(){
		System.out.println("WELCOME TO HOME..!");
		 return "Home";
	}
	
	@RequestMapping("/registerForm")
	public String Register(){
		System.out.println("Registration");
		return "Register";
	}
	
	
	@RequestMapping("/register")
	public String Register(@ModelAttribute EmpEntity Emp,Model m){

		boolean isAdded = empService.Register(Emp);
		
		if(isAdded){
			m.addAttribute("successMsg","Employee Added Successfully...");
		}else{
			m.addAttribute("errMsg","Unable to Add...");
		}
		return "RegView";
	}
	
	@RequestMapping("/updateForm")
	public String updateForm() {
		return "update";
	}
	
	@RequestMapping("/update")
	public String updateData(@ModelAttribute EmpEntity Emp, Model m) {
		
		boolean isUpdated = empService.update(Emp);
		
		if(isUpdated){
			m.addAttribute("successMsg","Employee Updated Successfully...");
		}else{
			m.addAttribute("errMsg","Unable to Update...");
		}
		
		return "update";
	}
	

	@RequestMapping("/selectEmployeeForm")
	public String selectEmployeeForm() {
		return "selectEmployee";
	}
	
	@RequestMapping("/selectEmployeeById")
	public String selectEmployeeById(@RequestParam int id, Model m) {
		
		EmpEntity Emp = empService.selectEmployeeById(id);
		
		m.addAttribute("empData", Emp);
		
		return "display";
	}
	

}
