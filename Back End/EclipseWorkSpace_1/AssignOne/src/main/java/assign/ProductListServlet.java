package assign;

import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
* Servlet implementation class ProductListServlet
*/
@WebServlet("/productList")
public class ProductListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<html><head><title>Product List</title><link rel=\"stylesheet\" href=\"styles3.css\">\r\n"
        		+ "</head><body>");
        out.println("<h1>Buy Products</h1>");
        out.println("<form action='productDetails' method='get'>");
        out.println("Bat&nbsp&nbsp&nbsp:<input type='submit' name='Bat' value='Buy'><br><br>");
        out.println("Ball&nbsp&nbsp:<input type='submit' name='Ball' value='Buy'><br><br>");
        out.println("Shoe&nbsp:<input type='submit' name='Shoe' value='Buy'><br>");
        out.println("</form>");
        out.println("</body></html>");
    }
}
