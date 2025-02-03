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

@WebServlet("/AdminUpdateServlet")
public class AdminUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String Name = request.getParameter("Name");
        String Email = request.getParameter("Email");
        String Role = request.getParameter("Role");
        String RegisterDate = request.getParameter("RegisterDate");
        String RegisterCourse = request.getParameter("RegisterCourse");

        String url = "jdbc:mysql://localhost:3306/exam"; 
        String user = "root"; 
        String password = "kumu2004";  

        String sql = "UPDATE exams SET Name=?, Email=?, Role=?, RegisterDate=?, RegisterCourse=? WHERE id=?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, Name);
            stmt.setString(2, Email);
            stmt.setString(3, Role);
            stmt.setString(4, RegisterDate);
            stmt.setString(5, RegisterCourse);
            stmt.setString(6, id); // Add id parameter here

            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated > 0) {
                out.println("<h2>User information updated successfully!</h2>");
            } else {
                out.println("<h2>Error: Could not find a record with id " + id + ".</h2>");
            }

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
