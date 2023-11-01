package com.demo.hibernatedemo;
 
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
 
import com.demo.hibernatedemo.config.HibernateUtility;
import com.demo.hibernatedemo.entities.Product;
 
public class App {
  public static void main(String[] args) {
    SessionFactory sessionFactory=HibernateUtility.getSessionFactoryObject();
	 Session session=sessionFactory.openSession();
	 Product prdObj=session.get(Product.class, 1);
	 session.close();
	 //prdObj is detached
	 prdObj.setPrdPrice(2000);
	 Session session1=sessionFactory.openSession();
	 Product myObj=session1.get(Product.class, 1);//myObj persistant
	 Transaction trnx= session1.beginTransaction();
	 session1.merge(prdObj);
	 trnx.commit();
	 session1.close();
	 System.out.println(prdObj);
	 System.out.println(myObj); 
  }
}
