package pakage.himani;

import pakage.himani.config.DbConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class deleteServlet extends HttpServlet {
    private Logger log = Logger.getLogger(deleteServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        {

            String id = request.getParameter("id");

            if (null == id) {
                response.sendRedirect("student.jsp");
            }

            Connection connection = DbConfig.getConnection();

            try {

                PreparedStatement ps = connection.prepareStatement("delete from StudentRecord where id=?");
                ps.setString(1, id);

                int i = ps.executeUpdate();

                if (i > 0) {
                    log.info("successfully deleted");
                }

            } catch (Exception e) {
                log.log(Level.SEVERE, e.getMessage(), e);
            } finally {
                DbConfig.closeConnection(connection);
            }

            response.sendRedirect("student.jsp");
        }
    }
}


