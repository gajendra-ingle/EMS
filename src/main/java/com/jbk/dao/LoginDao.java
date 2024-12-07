package com.jbk.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.User;

@Repository
public class LoginDao {

	@Autowired
	private SessionFactory sessionFactory;

	public User loginPage(String username, String password) {
		try (Session session = sessionFactory.openSession()) {
			User user = session.get(User.class, username);
			if (user != null) {
				if (user.getPassword().equals(password)) {
					return user;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
