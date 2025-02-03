package Update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LecturesUpdateServlet")
public class LecturesUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection parameters
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/lecturer"; 
    String user = "root"; 
    String password = "kumu2004"; 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String LecID = request.getParameter("Lecid");
        String lecturerName = request.getParameter("lecturerName");
        String Email = request.getParameter("Email");
        String Department = request.getParameter("Department");

        if (LecID == null || LecID.trim().isEmpty()) {
            out.println("<h2>Error: Lecturer ID is required.</h2>");
            return;
        }

        String sql = "UPDATE Lecturers SET lecturerName=?, Email=?, Department=? WHERE LecID=?";

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(url ,user, password);

            // Create PreparedStatement
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, lecturerName);
            stmt.setString(2, Email);
            stmt.setString(3, Department);
            stmt.setString(4, LecID);

            // Execute update
            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated > 0) {
                out.println("<h2>Lecturer information updated successfully!</h2>");
            } else {
                out.println("<h2>Error: No record found with Lecturer ID " + LecID + ".</h2>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
