import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("loggedIn").equals(false)) {
            request.getSession().setAttribute("isAdmin", false);
            request.getSession().setAttribute("isUser", false);
        }
        if (request.getParameter("username") != null) {
            response.sendRedirect("/profile");
        } else {
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.getSession().setAttribute("currentName", request.getParameter("username"));
        boolean adminAttempt = username.equals("admin") && password.equals("password");
        boolean userAttempt = username.equals("user") && password.equals("password");

        if (adminAttempt) {
            request.getSession().setAttribute("isAdmin", true);
            request.getSession().setAttribute("loggedIn", true);
            response.sendRedirect("/profile");
        } else if (userAttempt) {
            request.getSession().setAttribute("isUser", true);
            request.getSession().setAttribute("loggedIn", true);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
