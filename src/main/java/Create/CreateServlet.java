package Create;

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


@WebServlet("/CreateServlet")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		// set the response content type
		
				response.setContentType("text/html");
		        PrintWriter out = response.getWriter();
		        
		       // Retrieve form data
		        
		        String examName = request.getParameter("examName");
		        String eDate = request.getParameter("eDate");
		        String eTime = request.getParameter("eTime");
		        String eDuration = request.getParameter("eDuration");
		        
		        // Database connection parameters
		        String url = "jdbc:mysql://localhost:3306/exam"; 
		        String user = "root"; 
		        String password = "kumu2004"; 
				
				
		     // SQL Insert Query
		        String sql = "INSERT INTO exam (examName, eDate, eTime, eDuration) VALUES (?, ?, ?, ?)";
		        
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
		            
		            // Execute the query
		            int rowsInserted = stmt.executeUpdate();
		            
		            if (rowsInserted > 0) {
		            	String alertMessage = "Data Insert Successful";
		    			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Read.jsp'</script>");
		    		
		            } else {
		                out.println("<h2>Oops! Something went wrong. Please try again.</h2>");
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
