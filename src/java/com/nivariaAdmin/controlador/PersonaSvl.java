/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nivariaAdmin.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.nivariaAdmin.dao.personaDaoImpl;
import com.nivariaAdmin.modelo.Persona;
import java.sql.Date;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author ESTUDIANTES
 */
@WebServlet(name = "PersonaSvl", urlPatterns = {"/PersonaSvl"})
public class PersonaSvl extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            personaDaoImpl perDao = new personaDaoImpl();
            Persona person = new Persona();
            
            String respuesta = null;
            RequestDispatcher rd = null;
            
            try {
                if (request.getParameter("btnRegistrar")!= null) {
                    person.setCodigoRegistro(request.getParameter("codigo"));
                    person.setFechaRegistro(Date.valueOf(request.getParameter("fechaRegistroS")));
                    person.setNombres(request.getParameter("nombres"));
                    person.setApellidos(request.getParameter("apellidos"));
                    person.setFechaNacimiento(Date.valueOf(request.getParameter("cumpleaños")));
                    person.setGenero(request.getParameter("genero"));
                    person.setLugarNacimiento(request.getParameter("departamento"));
                    person.setIdTipoDocumento(Integer.parseInt(request.getParameter("tipoIdent")));
                    person.setNroDocumento(request.getParameter("ndoc"));
                    
                }
            } catch (NumberFormatException e) {
                System.out.println("Problemas en el server: " + e.toString());
            }
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private static class PersonaDaoImpl {

        public PersonaDaoImpl() {
        }
    }

}
