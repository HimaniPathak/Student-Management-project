
package pakage.himani;
import pakage.himani.config.DbConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;


public class registerServlet extends HttpServlet {
    private Logger log = Logger.getLogger(insertServlet.class.getName());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("Id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String age = request.getParameter("age");


        Connection connection = DbConfig.getConnection();
        if (Objects.isNull(connection)) {
            response.sendRedirect("student.jsp");
        }

        try {

            PreparedStatement ps = connection
                    .prepareStatement("UPDATE StudentRecord set name=?,email=?,age=? where id=?");

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, age);
            ps.setInt(4, Integer.parseInt(id));



            int i = ps.executeUpdate();
            if (i > 0)
                log.info("successfully updated");

        } catch (Exception e2) {
            log.log(Level.WARNING, e2.getMessage(), e2);
        } finally {
            DbConfig.closeConnection(connection);
        }

        response.sendRedirect("student.jsp");
    }
}

