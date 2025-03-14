package storage;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import Models.Reserva;
//se utilizo una base de datos local o guardar archivos de esta manera 
public class DataStorage {
    private static List<Reserva> reservas = new ArrayList<>();
    private static int contadorId = 1;

    public static void agregarReserva(String nombre, String fecha, String espacioTrabajo, int duracionHoras) {
        reservas.add(new Reserva(contadorId++, nombre, fecha, espacioTrabajo, duracionHoras));
    }

    public static List<Reserva> getReservas() {
        return reservas;
    }

    public static void eliminarReserva(int id) {
        Iterator<Reserva> pasarporlista = reservas.iterator();
        while (pasarporlista.hasNext()) {
            Reserva r = pasarporlista.next();
            if (r.getId() == id) {
                pasarporlista.remove();
                break;
            }
        }
    }
}
