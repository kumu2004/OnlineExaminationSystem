package Login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LecturesLoginServlet")
public class LecturesLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Replace with your user authentication logic
        if ("lectures".equals(username) && "password".equals(password)) {
            // Successful login
            response.sendRedirect("LecturesCreate.jsp"); // Redirect to Create.jsp
        } else {
            // Failed login
            request.setAttribute("errorMessage", "Invalid username or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("LecturesLogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
