package template;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class Datahelper 
{
	public static Configuration cfg;
	public static SessionFactory sf;
	public static Session s;
	public static Transaction tx;
	
	public static void configureFile()
	{
		 cfg = new Configuration();
		 cfg.configure("hibernate.cfg.xml");
		 sf = cfg.buildSessionFactory();
		 s = sf.openSession();
	}
	public static void insertQuery(Object o)
	{
		tx = s.beginTransaction();
		s.save(o);
		tx.commit();
	}
	
	public static Query getRecord(String st)
	{
		Query q = s.createQuery(st);
		return q;
	}
	public static void closeConn()
	{
		s.close();
	}
	public static void updateCommitClose(Object o)
	{
		s.update(o);
		tx.commit();
		s.close();
	}

}
