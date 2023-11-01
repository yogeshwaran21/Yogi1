package work;

public class TestHashMap {
	public static void main(String[] args) {

	     Studentss stu = new Studentss();
	        stu.setNames();
	        System.out.println("Students names:");
	        stu.printNames();
	        stu.getName("1");
	        System.out.println("Students names using keySet:");
	        stu.printNamesKeySet();
	        stu.printSize();
	        stu.remove("3");
	        System.out.println("Names:");
	        stu.printNames();
	    }
}
