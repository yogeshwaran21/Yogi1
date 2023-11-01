package work;
//import java.util.Comparator;

 public class Student implements Comparable<Student> {
	  
	    private int rollNo;
	    private String name;
	    
	    public Student(int rollNo, String name) {
	        this.rollNo = rollNo;
	        this.name = name;
	    }
	    public int getRollNo() {
	        return rollNo;
	    }
	    public String getName() {
	        return name;
	    }
	    public String toString() {
	        return "Roll No: " + rollNo + ", Name: " + name;
	    }
	    public int compareTo(Student o) {
	        return this.name.compareTo(o.name);
	    }
//	    class CompareName implements Comparator<Student>{
//	    public int compare(Student o1,Student o2) {
//	    	return o1.getName().compareTo(o2.getName());
//	    }
	  }  
	
	
