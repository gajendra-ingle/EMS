package com.jbk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jbk.entity.User;
import com.jbk.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/profile/{userName}")
	public String userProfile(@PathVariable String userName) {
		return "profile";
	}
	
	@PostMapping("/updateProfile")
	public String updateProfile(@ModelAttribute User user, Model model){
		boolean result = userService.updateProfile(user);
		
		if(result) {
			model.addAttribute("msg", "Profile update Successfully");
		}else {
			model.addAttribute("msg", "Profile not update");
		}

		return "profile";
	}
}
