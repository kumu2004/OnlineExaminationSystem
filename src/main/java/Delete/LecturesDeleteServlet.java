package Delete;

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

@WebServlet("/LecturesDeleteServlet")
public class LecturesDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set the response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve the id from the form
        String LecID = request.getParameter("LecID");

        // Database connection parameters
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/lecturer"; 
        String user = "root"; 
        String password = "kumu2004"; 
        // SQL Delete Query
        String sql = "DELETE FROM Lecturers WHERE LecID=?";

        try {
            // Load and register the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Create a connection
            Connection conn = DriverManager.getConnection(url, user, password);

            // Create a PreparedStatement to execute the query
            PreparedStatement stmt = conn.prepareStatement(sql);

            // Set the id parameter
            stmt.setString(1, LecID);

            // Execute the delete query
            int rowsDeleted = stmt.executeUpdate();

            if (rowsDeleted > 0) {
                out.println("<h2>LecID " + LecID + " was successfully deleted!</h2>");
            } else {
                out.println("<h2>Error: Could not find a record with LecID " + LecID + ".</h2>");
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
