package work;
import java.util.ArrayList;
import java.util.Collections;

public class StudentSortDemo {
public static void main(String[] args) {		
	        ArrayList<Student> students = new ArrayList<>();
	        students.add(new Student(1, "Yogi"));
	        students.add(new Student(2, "Siva"));
	        students.add(new Student(3, "Balu"));
	        students.add(new Student(4, "Chandran"));
	        students.add(new Student(5, "Babu"));

	        System.out.println("Unsorted");
	        for (Student student : students) {
	            System.out.println(student);
	        }
	        Collections.sort(students);
	        System.out.println("Sorted");
	        for (Student student : students) {
	            System.out.println(student);
	        } 
	  }
}
