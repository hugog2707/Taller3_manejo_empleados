/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.taller3empleadosadmini.controller;

import com.mycompany.taller3empleadosadmini.bussines.Information;
import com.mycompany.taller3empleadosadmini.entities.Empleados;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dev
 */
public class EmpServlet extends HttpServlet {
    List<Empleados> empleados = new ArrayList<Empleados>();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Information info = new Information();
            
            if(request.getParameter("accion")!=null){
                String accion = request.getParameter("accion");
                
            if (accion.equals("delete")) {
                System.out.println("////////////entro al delete");

                long id = (!request.getParameter("id").isEmpty())? Long.parseLong(request.getParameter("id")):0;
                if (info.eliminarEmpleados((long) id)) {
                    request.setAttribute("msm", "registro borrado");
                }
            }
            
                if (accion.equals("Update")) {
                    Empleados emp = new Empleados();
                    emp.setId_empleado(Long.parseLong(request.getParameter("id")));
                    emp.setDocumento_tipo(request.getParameter("documento_tipo"));
                    emp.setDocumento_numero(Integer.parseInt(request.getParameter("documento_numero")));
                    emp.setNombres(request.getParameter("nombres"));
                    emp.setApellidos(request.getParameter("apellidos"));
                    emp.setDepartamentos_id(Integer.parseInt(request.getParameter("departamentos_id")));
                    emp.setCiudad(request.getParameter("ciudad"));
                    emp.setDireccion(request.getParameter("direccion"));
                    emp.setCorreo_electronico(request.getParameter("correo_electronico"));
                    emp.setTelefono(Integer.parseInt(request.getParameter("telefono")));
                    if (info.actualizarEmpleados(emp)) {
                        System.out.println("entro a actualizar$$$$$$$$$$$$$$$$$$$$");
                        this.empleados = info.todosEmpleados();
                        request.setAttribute("empleados", this.empleados);
                        request.getRequestDispatcher("Empleados.jsp").forward(request, response);
                    }
                }
                
                if(accion.equals("Add")){
                    Empleados emp = new Empleados();
                    emp.setDocumento_tipo(request.getParameter("documento_tipo"));
                    emp.setDocumento_numero(Integer.parseInt(request.getParameter("documento_numero")));
                    emp.setNombres(request.getParameter("nombres"));
                    emp.setApellidos(request.getParameter("apellidos"));
                    emp.setDepartamentos_id(Integer.parseInt(request.getParameter("departamentos_id")));
                    emp.setCiudad(request.getParameter("ciudad"));
                    emp.setDireccion(request.getParameter("direccion"));
                    emp.setCorreo_electronico(request.getParameter("correo_electronico"));
                    emp.setTelefono(Integer.parseInt(request.getParameter("telefono")));
                    if (info.insertarEmpleado(emp)) {
                        this.empleados = info.todosEmpleados();
                    }
                }
            
            }
            this.empleados = info.todosEmpleados();
            request.setAttribute("empleados", this.empleados);
            request.getRequestDispatcher("Empleados.jsp").forward(request, response);
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
