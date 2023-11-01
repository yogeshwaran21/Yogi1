package com.demo.hibernatedemo.entities;

import java.util.ArrayList;
import java.util.List;
 
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
 
@Entity
@Table(name = "Emp")
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empId;
	private String empName;
	private double salary;
//	@OneToOne
//	@JoinColumn(name = "addId", referencedColumnName = "addressId")	
//	private Address empAddress;
	@ManyToMany
	@JoinTable(
	 name="EmpProjects",joinColumns = {@JoinColumn(name="empId")},
	 inverseJoinColumns = {@JoinColumn(name="prjId")}
			)
	private List<Project> projects;
	public Employee() {
	}
	public Employee(int empId, String empName, double salary) {
		this.empId = empId;
		this.empName = empName;
		this.salary = salary;
	}
	public Employee(String empName, double salary) {
		this.empName = empName;
		this.salary = salary;
		this.projects=new ArrayList<Project>();
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", salary=" + salary 
				+ "]";
	}

 
}
