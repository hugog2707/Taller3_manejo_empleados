/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.taller3empleadosadmini.data;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dev
 */
public class Conection {
    private String user="root";
    private String password="";
    private String bd="departamendos_empleados";
    private String url="jdbc:mysql://localhost:3306/" + bd;
    private Connection cnx=null;
    
    public Conection(){
        
    }
    
    public Connection getConnection(){
        try{
            System.out.println("hay conexion a la bd");
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx=DriverManager.getConnection(url, user, password);
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("####### " + e.getMessage());
        }
        
        return cnx;
    }
}
