import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());

        if (request.getSession().getAttribute("loggedIn").equals(true)) {
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        } else if (request.getSession().getAttribute("loggedIn").equals(false)) {
            response.sendRedirect("/login");
        }
    }
}
