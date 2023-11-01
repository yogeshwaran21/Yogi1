package yogi;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
       
     	Scanner scan=new Scanner(System.in);
     	
     	Menu myDish[]=new Menu[2];
     	for(int i=0;i<myDish.length;i++) {
		System.out.println("Enter Dish Name:");
		String name=scan.nextLine();
		System.out.println("Enter Calories:");
		float calories =scan.nextFloat();
		System.out.println("Enter Cooking Time:");
		int time=scan.nextInt();
		System.out.println("Enter Number of Wine Bottles:");
		int bottles=scan.nextInt();
		System.out.println("Enter Price");
		float price=scan.nextFloat();
		scan.nextLine();
		myDish[i] =new Menu(name,calories,time,bottles,price);
		System.out.println();
	}
     	for(Menu dish:myDish) {
     		System.out.println(dish.toString());
     	}
     	System.out.println("\t");
     	for(Menu dish:myDish) {
     		
     		System.out.println(dish.toCook());
     	}	
	}
}

