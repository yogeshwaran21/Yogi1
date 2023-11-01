package work;

import java.util.Scanner;

public class PizzaHut {
public static void main(String[] args) {
	Customer customer = new Customer();

//	customer.setCustNo(1);
//	customer.setCustName("");
//	customer.setCustAddr("");

	Scanner scan = new Scanner(System.in);
	System.out.println("Enter the Number");
	int custNo = scan.nextInt();
	scan.nextLine();
	System.out.println("Enter the Name");
	String custName = scan.nextLine();
	System.out.println("Enter the Address");
	String custAddr = scan.nextLine();

	// customer.display();
}
}
