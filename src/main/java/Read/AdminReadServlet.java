package Read;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminReadServlet")
public class AdminReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database credentials
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/exam"; // Database name
    private static final String JDBC_USER = "root"; // Database username
    private static final String JDBC_PASSWORD = "kumu2004"; // Database password

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set content type to XML
        response.setContentType("application/xml");
        try (PrintWriter out = response.getWriter()) {
            // Start the XML document
            out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            out.println("<exams>");

            // Try-with-resources to ensure resources are closed after use
            try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
                 Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery("SELECT * FROM exams")) {

                // Load MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Iterate over the result set and generate XML entries for each exam
                while (rs.next()) {
                    out.println("  <exam>");
                    out.println("    <id>" + rs.getInt("id") + "</id>");
                    out.println("    <name>" + rs.getString("Name") + "</name>");
                    out.println("    <email>" + rs.getString("Email") + "</email>");
                    out.println("    <role>" + rs.getString("Role") + "</role>");
                    out.println("    <registerDate>" + rs.getString("RegisterDate") + "</registerDate>");
                    out.println("    <registerCourse>" + rs.getString("RegisterCourse") + "</registerCourse>");
                    out.println("  </exam>");
                }

            } catch (Exception e) {
                // Log error or handle exception
                e.printStackTrace();
            }

            // End the XML document
            out.println("</exams>");
        }
    }

    // Handle POST requests by delegating to doGet method (same functionality)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
