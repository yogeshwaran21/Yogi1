package demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

/**
 * Servlet implementation class withdraw
 */
@WebServlet("/withdraw")
public class withdraw extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public withdraw() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection con = null;
		 PrintWriter out=response.getWriter();
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        try {
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/work", "root", "Aa3g3333");
	            System.out.println("Connection Established...");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        int userId = Integer.parseInt(request.getParameter("uid"));

	        try {
	            PreparedStatement balanceStatement = con.prepareStatement("select balance from Acc where u_id = ?");
	            balanceStatement.setInt(1, userId);
	            ResultSet resultSet = balanceStatement.executeQuery();

	            if (resultSet.next()) {
	                double balance = resultSet.getDouble("balance");
	                out.println("Balance : "+balance);
	                
	                // Set the balance in the request attribute to be accessed in the JSP
	                //request.setAttribute("balance", balance);
	                //request.getRequestDispatcher("balance.jsp").forward(request, response);
	            } else {
	                // User not found in the database, handle as needed.
	                response.sendRedirect("balance_failed.jsp");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle any database connection errors.
	            response.sendRedirect("balance_failed.jsp");
	        }
	    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}


