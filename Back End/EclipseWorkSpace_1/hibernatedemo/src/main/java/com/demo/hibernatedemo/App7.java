package com.demo.hibernatedemo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
 
import com.demo.hibernatedemo.config.HibernateUtility;
import com.demo.hibernatedemo.entities.Employee;
import com.demo.hibernatedemo.entities.Project;
 
public class App7 {
	public static void main(String ar[]) {
		 SessionFactory sessionFactory=HibernateUtility.getSessionFactoryObject();
		 Session session=sessionFactory.openSession();
		 session.beginTransaction();
//		 Project prjObj1=new Project("ERP");
//		 session.persist(prjObj1);
//		 Project prjObj2=new Project("Inventory");
//		 session.persist(prjObj2);
//		 Employee empObj=new Employee("Ram", 35000);
//		 empObj.getProjects().add(prjObj1);
//		 empObj.getProjects().add(prjObj2);
//		 session.persist(empObj);
		 Employee empObj=session.get(Employee.class, 1);
		 System.out.println(empObj);
		 List<Project> projects=empObj.getProjects();
		 projects.forEach(System.out::println);
		 Project prjObj=session.get(Project.class, 1);
		 System.out.println(prjObj);
		 List<Employee> employees=prjObj.getEmployees();
		 employees.forEach(System.out::println);
		 session.getTransaction().commit();
		 session.close();
	}
}
