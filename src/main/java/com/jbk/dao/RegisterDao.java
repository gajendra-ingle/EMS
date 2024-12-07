package com.jbk.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.User;

@Repository
public class RegisterDao {

	@Autowired
	private SessionFactory sessionFactory;

	public User registerUser(User user) {
		try (Session session = sessionFactory.openSession()) {
			User dbUser = session.get(User.class, user.getUserName());
			if (dbUser == null) {
				session.save(user);
				session.beginTransaction().commit();
				return user;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
