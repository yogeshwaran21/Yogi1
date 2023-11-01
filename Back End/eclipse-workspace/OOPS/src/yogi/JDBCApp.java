package yogi;

import java.sql.Connection;
import java.util.Scanner;

public class JDBCApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection con=null;
		Scanner sc=new Scanner(System.in);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
