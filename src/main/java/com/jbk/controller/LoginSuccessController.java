package com.jbk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginSuccessController {

	
	@GetMapping("/add-employee")
	public String loginSuccess() {
		return "add-employee";
	}
}

