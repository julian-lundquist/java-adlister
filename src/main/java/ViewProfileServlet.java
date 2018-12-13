import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("person", request.getSession().getAttribute("currentName"));
        if ((request.getSession().getAttribute("isAdmin").equals(true) ||
                request.getSession().getAttribute("isUser").equals(true)) && request.getSession().getAttribute("loggedIn").equals(true)) {
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        } else if ((request.getSession().getAttribute("isAdmin").equals(false) ||
                request.getSession().getAttribute("isUser").equals(false)) && request.getSession().getAttribute("loggedIn").equals(false)) {
            response.sendRedirect("/login");
        }
    }
}
