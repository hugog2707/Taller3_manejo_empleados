/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.taller3empleadosadmini.controller;

import com.mycompany.taller3empleadosadmini.bussines.Information;
import com.mycompany.taller3empleadosadmini.entities.Departamentos;
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
public class DepartamentosServlet extends HttpServlet {

    List<Departamentos> departamentos = new ArrayList<Departamentos>();

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
            System.out.println("/*********************entro al servlet**********************************");
            /* TODO output your page here. You may use following sample code. */
            
            
            Information info = new Information();
            
            if(request.getParameter("accion")!=null){
                String accion = request.getParameter("accion");
                
            if (accion.equals("delete")) {
                System.out.println("////////////entro al delete");

                long id = (!request.getParameter("id").isEmpty())? Long.parseLong(request.getParameter("id")):0;
                if (info.eliminar((long) id)) {
                    request.setAttribute("msm", "registro borrado");
                }
            }
            
                if (accion.equals("Update")) {
                    Departamentos dep = new Departamentos();
                    dep.setId_departamento(Long.parseLong(request.getParameter("id")));
                    dep.setDepartamento_codigo(Integer.parseInt(request.getParameter("departamento_cod_nuevo")));
                    dep.setDepartamento_nombre(request.getParameter("departamento_nombre_nuevo"));
                    System.out.println("entro a agregar************");
                    if (info.actualizar(dep)) {
                        System.out.println("entro a actualizar$$$$$$$$$$$$$$$$$$$$");
                        this.departamentos = info.todos();
                        request.setAttribute("departamentos", this.departamentos);
                        request.getRequestDispatcher("Departamentos.jsp").forward(request, response);
                    }
                }
                
                if(accion.equals("Add")){
                    Departamentos dep = new Departamentos();
                    dep.setDepartamento_codigo(Integer.parseInt(request.getParameter("codigo_departamento")));
                    dep.setDepartamento_nombre(request.getParameter("nombre_departamento"));
                    if (info.insertar(dep)) {
                        this.departamentos = info.todos();
                    }
                }
            
            }
            this.departamentos = info.todos();
            request.setAttribute("departamentos", this.departamentos);
            request.getRequestDispatcher("Departamentos.jsp").forward(request, response);
            
            
        } catch (Exception e) {
            System.out.println("$$$$ " + e.getMessage());
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
