package controllers;

import storage.DataStorage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// no se uso @RestController
//@RequestMapping("/eliminarReservasServlet") porque se utilizo configuracion en el web.xml ya que me causaba un error
public class EliminarReservaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        DataStorage.eliminarReserva(id);
        response.sendRedirect("listaReservas.jsp");
    }
}
