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

@WebServlet("/LecturesCreateServlet")
public class LecturesCreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set the response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Retrieve form data
        String lecturerName = request.getParameter("lecturerName");
        String Email = request.getParameter("Email");
        String Department = request.getParameter("Department");
        
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/lecturer"; 
        String user = "root"; 
        String password = "kumu2004"; 
        // SQL Insert Query
        String sql = "INSERT INTO Lecturers (lecturerName, Email, Department) VALUES (?, ?, ?)";
        
        try {
            // Load and register the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Create a connection
            Connection conn = DriverManager.getConnection(url, user, password);
            
            // Create a PreparedStatement to execute the query
            PreparedStatement stmt = conn.prepareStatement(sql);
            
            // Set the query parameters
            stmt.setString(1, lecturerName);
            stmt.setString(2, Email);
            stmt.setString(3, Department);
            
            // Execute the query
            int rowsInserted = stmt.executeUpdate();
            
            if (rowsInserted > 0) {
                out.println("<h2>Thank you, " + lecturerName + "! Successfully Created.</h2>");
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
