package pakage.himani;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class welcomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");
        if (request.getParameter("name").equals("Himani")) {
            RequestDispatcher rd = request.getRequestDispatcher("student.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("index.jsp");


        }

    }
}