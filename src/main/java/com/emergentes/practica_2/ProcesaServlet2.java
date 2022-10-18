
package com.emergentes.practica_2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "ProcesaServlet2", urlPatterns = {"/ProcesaServlet2"})
public class ProcesaServlet2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op =request.getParameter("op");
        if (op.equals("eliminar")) {
            int pos=-1;
            int buscado = -1;
            int id =Integer.parseInt(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ArrayList<Tarea> lista =(ArrayList<Tarea>)ses.getAttribute("tareas");
            for(Tarea t:lista){
                pos++;
                if (t.getId()==id) {
                    buscado=pos;
                }
            }
            lista.remove(buscado);
            response.sendRedirect("ejercicio2.jsp");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String tarea = request.getParameter("tarea");
        Tarea t = new Tarea();
        t.setId(id);
        t.setTarea(tarea);
        HttpSession sesion = request.getSession();
        ArrayList<Tarea> lista = (ArrayList<Tarea>)sesion.getAttribute("tareas");
        lista.add(t);
        response.sendRedirect("ejercicio2.jsp");
    }


}
