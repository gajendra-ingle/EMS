package com.jbk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jbk.entity.Employee;
import com.jbk.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@PostMapping("/add-employee")
	public String addEmployee(@ModelAttribute Employee employee, Model model) {
		Employee emp = employeeService.addEmployee(employee);
		if (emp != null) {
			model.addAttribute("msg", "Employee added successfully");
			return null;
		} else {
			model.addAttribute("msg", "Employee already exist");
			return null;
		}
	}

	@GetMapping("/search-employee")
	public String getEmployeeByName(@RequestParam(defaultValue = "") String employeeName, Model model) {
		Employee employee = employeeService.getEmployeeByName(employeeName);

		if (employee != null) {
			model.addAttribute("employee", employee);
		} else {
			model.addAttribute("error", "Employee not found");
		}
		return "search-employee";
	}

	@GetMapping("/all-employees")
	public String getAllEmployees(Model model) {
		List<Employee> empList = employeeService.getAllEmployees();
		model.addAttribute("employees", empList);
		return "all-employees";
	}

	@GetMapping("/delete-employee")
	public String deleteEmployee(@RequestParam(defaultValue = "") String employeeId, Model model) {
		int status = employeeService.deleteEmployee(employeeId);
		switch (status) {
		case 1:
			model.addAttribute("msg", "Employee Deleted Successfully");
			break;
		case 2:
			model.addAttribute("msg", "Employee Not Exist");
			break;
		case 3:
			model.addAttribute("msg", "Something went wrong..");
			break;
		default:
			break;
		}
		return "delete-employee";
	}

	@PostMapping("/update-employee")
	public String updateEmployeeInfo(@ModelAttribute Employee employee, Model model) {
		boolean updateOrNot = employeeService.updateEmployeeInfo(employee);
		if (updateOrNot) {
			model.addAttribute("employee", employee);
			model.addAttribute("msg", "Employee updated successfully");
		} else {
			model.addAttribute("msg", "Something went wrong");
		}
		return "update-employee";
	}

	@GetMapping("/profile")
	public String userProfile() {
		return "profile";
	}

	@GetMapping("/search-or-update-employee")
	public String updateEmployee(@RequestParam(defaultValue = "") String employeeId, Model model) {

		Employee employee = employeeService.updateEmployee(employeeId);
		if (employee != null) {
			model.addAttribute("employee", employee);
			model.addAttribute("msg", "Employee updated successfully");
		} else {
			model.addAttribute("msg", "Employee not exits to update");
		}
		return "update-employee";

	}

}
