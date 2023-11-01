package demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userPage
 */
@WebServlet("/userPage")
public class userPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection con = null;
		PrintWriter out=response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<p>Error: Class not found</p>");
            return;
        }
 
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/work", "root", "Aa3g3333");
            out.println("<p>Connection Established...</p>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error: Unable to connect to the database</p>");
            return;
        }
 
        try (Statement stmt = con.createStatement()) {
            ResultSet rs = stmt.executeQuery("select * from parts");
            out.println("<table>");
            out.println("<tr><th>ID</th><th>Name</th><th>Color</th></tr>");
 
            while (rs.next()) {
                int id = rs.getInt("p_id");
                String name = rs.getString("p_name");
                String color = rs.getString("color");
 
                out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + color + "</td></tr>");
            }
 
            out.println("</table>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error: Unable to execute the query</p>");
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<p>Error: Unable to close the connection</p>");
            }
        }
 
        out.println("</body></html>");
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
