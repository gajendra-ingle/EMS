package com.jbk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.EmployeeDao;
import com.jbk.entity.Employee;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;

	public Employee addEmployee(Employee employee) {
		return employeeDao.addEmployee(employee);
	}

	public Employee getEmployeeByName(String employeeName) {
		return employeeDao.getEmployeeByName(employeeName);
	}

	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}

	public int deleteEmployee(String employeeId) {
		return employeeDao.deleteEmployee(employeeId);
	}

	public Employee updateEmployee(String employeeId) {
		return employeeDao.updateEmployee(employeeId);
	}

	public boolean updateEmployeeInfo(Employee employee) {
		return employeeDao.updateEmployeeInfo(employee);
	}

}
