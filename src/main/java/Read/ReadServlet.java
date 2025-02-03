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


@WebServlet("/ReadServlet")
public class ReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Database credentials (replace with your actual database info)
	    final  String url = "jdbc:mysql://localhost:3306/exam"; 
       final String user = "root"; 
        final String password = "kumu2004";  // Replace 'your_password' with your MySQL password

	
		//List to hold the 
				List<ExamRead> exam = new ArrayList<>();
				
				 Connection conn = null;
			     Statement stmt = null;
			     
			     try {
			            // Load the MySQL JDBC Driver
			            Class.forName("com.mysql.cj.jdbc.Driver");

			            // Establish a connection to the database
			            conn = DriverManager.getConnection(url ,user,password);

			            // Create a statement to execute SQL queries
			            stmt = conn.createStatement();

			            // Execute the SQL query to retrieve all records from the "exam" table
			            String sql = "SELECT * FROM exam";
			            ResultSet rs = stmt.executeQuery(sql);

			            // Iterate over the result set and add each contact to the list
			            while (rs.next()) {
			                int id = rs.getInt("id");
			                String examName = rs.getString("examName");
			                String eDate = rs.getString("eDate");
			                String eTime = rs.getString("eTime");
			                String eDuration = rs.getString("eDuration");

			                // Create a new Contact object and add it to the list
			                exam.add(new ExamRead(id, examName, eDate, eTime, eDuration));
			            }

			            // Close the result set after processing
			            rs.close();
			        } catch (Exception e) {
			            e.printStackTrace();
			        } finally {
			            // Ensure the statement and connection are closed to avoid memory leaks
			            try {
			                if (stmt != null) stmt.close();
			                if (conn != null) conn.close();
			            } catch (Exception e) {
			                e.printStackTrace();
			            }
			        }

			        // Set the list of contacts as a request attribute so that the JSP can access it
			        request.setAttribute("exam", exam);

			        // Forward the request to the JSP page (contactus.jsp) for display
			        RequestDispatcher dispatcher = request.getRequestDispatcher("Read.jsp");
			        dispatcher.forward(request, response);
	
	
	}
}




class ExamRead{
	
		private int id;
	    private String examName;
	    private String eDate;
	    private String eTime;
	    private String eDuration;
	    
	    
		public ExamRead(int id, String examName, String eDate, String eTime, String eDuration) {
			super();
			this.id = id;
			this.examName = examName;
			this.eDate = eDate;
			this.eTime = eTime;
			this.eDuration = eDuration;
		}


		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public String getExamName() {
			return examName;
		}


		public void setExamName(String examName) {
			this.examName = examName;
		}


		public String geteDate() {
			return eDate;
		}


		public void seteDate(String eDate) {
			this.eDate = eDate;
		}


		public String geteTime() {
			return eTime;
		}


		public void seteTime(String eTime) {
			this.eTime = eTime;
		}


		public String geteDuration() {
			return eDuration;
		}


		public void seteDuration(String eDuration) {
			this.eDuration = eDuration;
		}
			
			 	
}





