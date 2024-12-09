package com.jbk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jbk.entity.User;
import com.jbk.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@PostMapping("/login")
	public String loginPage(@RequestParam String username, @RequestParam String password, Model model, HttpSession httpSession) {
		User user = loginService.loginPage(username, password);
		if (user != null) {
			httpSession.setAttribute("user", user);
			return "login-success";
		} else {
			model.addAttribute("msg", "Invalid Credentials");
			return null;
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "home";
	}
}
