/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

public class Reserva {
    //constructor para obtener la informacion que se guarda de manera local
    private int id;
    private String nombre;
    private String fecha;
    private String espacioTrabajo;  
    private int duracionHoras;      

    public Reserva(int id, String nombre, String fecha, String espacioTrabajo, int duracionHoras) {
        this.id = id;
        this.nombre = nombre;
        this.fecha = fecha;
        this.espacioTrabajo = espacioTrabajo;
        this.duracionHoras = duracionHoras;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getFecha() {
        return fecha;
    }

    public String getEspacioTrabajo() {
        return espacioTrabajo;
    }

    public int getDuracionHoras() {
        return duracionHoras;
    }
}
