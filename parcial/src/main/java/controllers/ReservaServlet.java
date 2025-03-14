package controllers;

import storage.DataStorage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReservaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String fecha = request.getParameter("fecha");
        String espacioTrabajo = request.getParameter("espacioTrabajo");
        int duracionHoras = Integer.parseInt(request.getParameter("duracionHoras"));

        // verifica si todo esta lleno
        if (nombre == null || fecha == null || espacioTrabajo == null || duracionHoras <= 0) {
            request.setAttribute("mensaje", "Error: Datos de la reserva no válidos.");
            request.getRequestDispatcher("nuevaReserva.jsp").forward(request, response);
            return;
        }

             DataStorage.agregarReserva(nombre, fecha, espacioTrabajo, duracionHoras);
        
        // manda el mensaje de conrifmacion
        request.setAttribute("mensaje", "Reserva confirmada para " + nombre + " el " + fecha + " en " + espacioTrabajo + " por " + duracionHoras + " horas.");
        
        request.getRequestDispatcher("listaReservas.jsp").forward(request, response);
    }
}
