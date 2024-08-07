
	package com.configuration;

	import java.util.Properties;

	import org.hibernate.SessionFactory;
	import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
	import org.hibernate.cfg.Configuration;
	import org.hibernate.cfg.Environment;
	import org.hibernate.service.ServiceRegistry;

	import com.entity.Book;

	public class Hibernate_Configuration {

	    private static SessionFactory sessionFactory;

	    public static SessionFactory getSessionFactory() {
	        if (sessionFactory == null) {
	            Configuration con = new Configuration();
	            Properties settings = new Properties();
	            settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
	            settings.put(Environment.URL, "jdbc:mysql://localhost:3306/Book_Management_System");
	            settings.put(Environment.USER, "root");
	            settings.put(Environment.PASS, "Ridd@2003");
	            settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect");
	            settings.put(Environment.HBM2DDL_AUTO, "update");
	            settings.put(Environment.SHOW_SQL, true);

	            con.setProperties(settings);
	            con.addAnnotatedClass(Book.class);

	            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
	                    .applySettings(con.getProperties()).build();
	            sessionFactory = con.buildSessionFactory(serviceRegistry);
	        }
	        return sessionFactory;
	    }
	

}
