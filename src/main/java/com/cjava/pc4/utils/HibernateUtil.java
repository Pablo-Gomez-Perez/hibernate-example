package com.cjava.pc4.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static final SessionFactory _sessionFactory;
	
	static {
		try {
			Configuration configuration = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(com.cjava.pc4.models.Costumer.class);
			_sessionFactory = configuration.buildSessionFactory();
		}catch(Throwable er) {
			throw new ExceptionInInitializerError(er);
		}
	}
	
	public static SessionFactory getSessionFactory() {
		return _sessionFactory;
	}
	
}
