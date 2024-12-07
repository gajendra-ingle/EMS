package com.jbk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.LoginDao;
import com.jbk.entity.User;

@Service
public class LoginService {

	@Autowired
	private LoginDao loginDao;
	
	public User loginPage(String username,  String password) {
		return loginDao.loginPage(username, password);
	}
}
