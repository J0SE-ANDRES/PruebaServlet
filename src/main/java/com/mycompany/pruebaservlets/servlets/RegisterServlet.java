/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pruebaservlets.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jose Torres
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    private static final String url = "jdbc:mysql://localhost:3306/prueba_servlet";
    private static Connection conexion;
    private Statement statement;
    private ResultSet rs;

    @Override
    public void init() throws ServletException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, "root", "");
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            throw new ServletException("No se pudo conectar a la base de datos", ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            //        Creacion de variables para el formulario de registro
            String identificacion = request.getParameter("userIdentificaion");
            String names = request.getParameter("userNames");
            String user_email = request.getParameter("userEmail");
            String password = request.getParameter("userPassword");

            statement = conexion.createStatement();
            rs = statement.executeQuery("SELECT * FROM usuario WHERE identificacion = '" + identificacion + "' AND correo = '" + user_email + "';");

            if (rs.next()) {
                response.sendRedirect("error.jsp?error=identificacionOcorreo_existente");
            } else {
                int fila_afectada = statement.executeUpdate("INSERT INTO `usuario` (`identificacion`, `nombres y apellidos`, `correo`, `contraseña`) "
                        + "VALUES ('" + identificacion + "', '" + names + "', '" + user_email + "', '" + password + "');"
                );

                if (fila_afectada > 0) {
                    request.getSession().setAttribute("userNames", names);
                    response.sendRedirect("index.html");
                } else {
                    response.sendRedirect("index.html");
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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

}