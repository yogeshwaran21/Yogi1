package Yogi;

//import java.util.Scanner;

public class BookDetails {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Book myBook=new Book();
//     	Scanner scan=new Scanner(System.in);
//		System.out.println("Enter Book Number");
//		myBook.setBookNo(bookNo);
//		scan.nextLine();
//		System.out.println("Enter Book Author");
//		myBook.setAuthor(author);
//		System.out.println("Enter Book Title");
//		myBook.setTitle(title);
//		System.out.println("Enter Book Price");
//		myBook.setPrice(price);
		
		System.out.println("Book Details : " + myBook.getBookNo() +" "+ myBook.getAuthor() +" "+ myBook.getTitle() +" "+ myBook.getPrice());
//		scan.close();
	}

}
