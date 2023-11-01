package test;
import java.util.*;

public class Hello {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
        employee[] employees = new employee[2];

        for (int i = 0; i < 2; i++) {
            System.out.print("Name: ");
            String name = scan.nextLine();
            System.out.print("Age - ");
            int age = scan.nextInt();
            System.out.print("Basic - ");
            double basic = scan.nextDouble();
            System.out.print("Hra - ");
            double hra = scan.nextDouble();
            System.out.print("Da - ");
            double da = scan.nextDouble();
            System.out.print("Allowance - ");
            double allowance = scan.nextDouble();

            if (allowance == 0) {
                employees[i] = new employee(name, age, basic, hra, da);
            } else {
                employees[i] = new employee(name, age, basic, hra, da, allowance);
            }
            scan.nextLine();
        }
        scan.close();
      
        for (int i = 0; i < 2; i++) { 
        	 System.out.print("\n");
            employees[i].emp();
        }
	}
		
}
