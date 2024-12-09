package com.jbk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.UserDao;
import com.jbk.entity.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public boolean updateProfile(User user) {
		return userDao.updateProfile(user);	
	}

}
