
package com.emergentes.practica_2;

public class Tarea {
    int id;
    String tarea;

    public Tarea() {
    }

    public Tarea(int id, String tarea) {
        this.id = id;
        this.tarea = tarea;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }
    
}
