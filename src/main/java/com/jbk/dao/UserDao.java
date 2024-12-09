package com.jbk.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.User;

@Repository
public class UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean updateProfile(User user) {
		try (Session session= sessionFactory.openSession()){
			
			session.update(user);
			session.beginTransaction().commit();
			return true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
