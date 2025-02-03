package Read;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.LecturesModel;

@WebServlet("/LecturesModelServlet")
public class LecturesReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/lecturer"; 
    String user = "root"; 
    String password = "kumu2004"; 
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<LecturesModel> lectures = new ArrayList<>();
        Connection conn = null;
        Statement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url,user,password);
            stmt = conn.createStatement();

            String sql = "SELECT * FROM Lecturers";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int LecID = rs.getInt("LecID");
                String lecturerName = rs.getString("lecturerName");
                String Email = rs.getString("Email");
                String Department = rs.getString("Department"); // Adjusted column name

                lectures.add(new LecturesModel(LecID, lecturerName, Email, Department));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("Lecturers", lectures);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Read.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
