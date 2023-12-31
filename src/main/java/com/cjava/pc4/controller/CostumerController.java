package com.cjava.pc4.controller;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.cjava.pc4.models.Costumer;
import com.cjava.pc4.utils.HibernateUtil;

public class CostumerController implements CrudDao<Costumer> {

	private final SessionFactory _sessionFactory;

	public CostumerController() {
		this._sessionFactory = HibernateUtil.getSessionFactory();
	}

	@Override
	public List<Costumer> findAll() throws SQLException {

		try {

			Session session = _sessionFactory.openSession();
			Query<Costumer> query = session.createQuery("FROM Costumer", Costumer.class);
			return query.list();

		} catch (Exception er) {
			er.printStackTrace();
			throw new SQLException("Failed to fetch all costumers: " + er.getMessage());
		}

	}

	@Override
	public Costumer findById(int id) throws SQLException {

		throw new UnsupportedOperationException("Unimplemented method 'findById'");
	}

	@Override
	public void updateElement(Costumer elemnt) throws SQLException {

		throw new UnsupportedOperationException("Unimplemented method 'updateElement'");
	}

	@Override
	public void deleteElement(int id) throws SQLException {

		throw new UnsupportedOperationException("Unimplemented method 'deleteElement'");
	}

	@Override
	public void insertElement(Costumer element) throws SQLException {		
		
		Session session = _sessionFactory.openSession();

		try {
			
			session.beginTransaction();
			
			session.save(element);
			
			session.getTransaction().commit();
			
		} catch (Exception er) {
			er.printStackTrace();
			throw new SQLException("Failed trying to insert element: " + er.getMessage());
		}

	}

}
