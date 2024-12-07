package com.jbk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jbk.entity.User;
import com.jbk.service.RegisterService;

@Controller
public class RegisterController {

	@Autowired
	private RegisterService registerService;

	@PostMapping("/register")
	public String registerUser(@ModelAttribute User user, Model model) {
		User isUserAdded = registerService.registerUser(user);
		if (isUserAdded != null) {
			model.addAttribute("msg", "Registration Successful ");
		} else {
			model.addAttribute("msg", "User already exist");
		}
		return "register";
	}
}
