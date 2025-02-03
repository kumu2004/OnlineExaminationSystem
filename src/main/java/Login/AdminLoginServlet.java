package Login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Replace with your user authentication logic
        if ("admin".equals(username) && "password".equals(password)) {
            // Successful login
            response.sendRedirect("AdminCreate.jsp"); // Redirect to Create.jsp
        } else {
            // Failed login
            request.setAttribute("errorMessage", "Invalid username or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("AdminLogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
