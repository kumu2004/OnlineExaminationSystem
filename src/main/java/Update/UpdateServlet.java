package Update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 // Set the response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Retrieve form data
        String id = request.getParameter("id");
        String examName = request.getParameter("examName");
        String eDate = request.getParameter("eDate");
        String eTime = request.getParameter("eTime");
        String eDuration = request.getParameter("eDuration");
        
        // Database credentials (replace with your actual database info)
        String url = "jdbc:mysql://localhost:3306/exam"; 
        String user = "root"; 
        String password = "kumu2004"; 

        
        
        // SQL Update Query
        String sql = "UPDATE exam SET examName=?, eDate=?, eTime=?, eDuration=? WHERE id=?";
        
        try {
            // Load and register the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Create a connection
            Connection conn = DriverManager.getConnection(url, user, password);
            
            // Create a PreparedStatement to execute the query
            PreparedStatement stmt = conn.prepareStatement(sql);
            
            // Set the query parameters
            
            stmt.setString(1, examName);
            stmt.setString(2, eDate);
            stmt.setString(3, eTime);
            stmt.setString(4, eDuration);
            stmt.setString(5, id);
            
            
            // Execute the update query
            int rowsUpdated = stmt.executeUpdate();
            
            if (rowsUpdated > 0) {
                out.println("<h2> Updated successfully!</h2>");
            } else {
                out.println("<h2>Error: Could not find a record with ID " + id + ".</h2>");
            }
            
            // Close the connections
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
		
	}

}
