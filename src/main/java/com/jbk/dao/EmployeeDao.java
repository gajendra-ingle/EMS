package com.jbk.dao;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.Employee;
import com.jbk.utility.EmployeeUtility;

@Repository
public class EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Employee addEmployee(Employee employee) {
		String employeeId = EmployeeUtility.generateEmployeeId();
		employee.setEmployeeId(employeeId);

		LocalDate joiningDate = LocalDate.now();
		employee.setJoiningDate(joiningDate);

		try (Session session = sessionFactory.openSession()) {
			Query<Employee> query = session.createQuery(
					"FROM Employee WHERE employeeName = :employeeName AND department = :department", Employee.class);

			query.setParameter("employeeName", employee.getEmployeeName());
			query.setParameter("department", employee.getDepartment());

			if (query.uniqueResult() != null) {
				return null;
			}
			Transaction transaction = session.beginTransaction();
			session.save(employee);
			transaction.commit();

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return employee;
	}

	public Employee getEmployeeByName(String employeeName) {
		Employee employee = null;
		try (Session session = sessionFactory.openSession()) {
			String hql = "FROM Employee WHERE employeeName=:employeeName";
			Query<Employee> query = session.createQuery(hql, Employee.class);
			query.setParameter("employeeName", employeeName);

			return query.uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return employee;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Employee> getAllEmployees() {
		List<Employee> employeeList = null;
		try (Session session = sessionFactory.openSession()) {
			Criteria criteria = session.createCriteria(Employee.class);
			employeeList = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return employeeList;
	}

	public int deleteEmployee(String employeeId) {
		try (Session session = sessionFactory.openSession()) {
			Employee employee = session.get(Employee.class, employeeId);
			if (employee != null) {
				session.delete(employee);
				session.beginTransaction().commit();
				return 1;
			} else {
				return 2;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return 3;
		}
	}

	public Employee updateEmployee(String employeeId) {
		Employee employee = null;
		try (Session session = sessionFactory.openSession()) {
			employee = session.get(Employee.class, employeeId);
			if (employee != null) {
				return employee;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return employee;
	}

	public boolean updateEmployeeInfo(Employee employee) {
		try(Session session = sessionFactory.openSession()) {
			
			session.update(employee);
			session.beginTransaction().commit();
			return true;
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
