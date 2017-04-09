package plugin;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionServlet;
import org.apache.struts.action.PlugIn;
import org.apache.struts.config.ModuleConfig;
import org.hibernate.HibernateException;
import org.hibernate.MappingException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernatePlugin implements PlugIn {
	private Configuration config;
	private SessionFactory factory;
	private static ServiceRegistry serviceRegistry;
	private static Class clazz = HibernatePlugin.class;
	public static final String KEY_NAME = clazz.getName();

	private static Log log = LogFactory.getLog(clazz);

	

	public void init(ActionServlet servlet, ModuleConfig modConfig) throws ServletException {

		try {
			System.out.println("KEY_NAME" + KEY_NAME);

			

			URL url = HibernatePlugin.class.getResource("/resources/hibernate.cfg.xml");
			
			System.out.println("url" + url);
			config = new Configuration();
			config.configure(url);
			
			config = new Configuration().configure(url);
			
			// factory.openSession();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
					.applySettings(config.getProperties());
			SessionFactory factory = config.buildSessionFactory(builder.build());

			// factory = config.buildSessionFactory();
			
			servlet.getServletContext().setAttribute(KEY_NAME, factory);
			
		} catch (MappingException e) {
			log.error("mapping error************", e);
			throw new ServletException();
		} catch (HibernateException e) {
			log.error("hibernate error", e);
			throw new ServletException();
		}
	}

	public void destroy() {
		try {
			factory.close();
		} catch (HibernateException e) {
			log.error("unable to close factory", e);
		}
	}

}
