package com.jbk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.RegisterDao;
import com.jbk.entity.User;

@Service
public class RegisterService {
	
	@Autowired
	private RegisterDao registerDao;

	public User registerUser(User user) {
		return registerDao.registerUser(user);
	}

}
