/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.taller3empleadosadmini.bussines;

import com.mycompany.taller3empleadosadmini.data.Conection;
import com.mycompany.taller3empleadosadmini.entities.Departamentos;
import com.mycompany.taller3empleadosadmini.entities.Empleados;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dev
 */
public class Information extends Conection {

    private Statement stm = null;
    private PreparedStatement pstm = null;
    private String query = "";
    private ResultSet rs = null;

    public List<Departamentos> todos() {
        System.out.println("@@@@@@@@ entro al todos");
        List<Departamentos> departamentos = new ArrayList<Departamentos>();
        List<Empleados> empleados = new ArrayList<Empleados>();
        try {
            this.query = "SELECT * FROM departamentos";
            if (this.getConnection() != null) {
                this.stm = this.getConnection().createStatement();
                this.rs = this.stm.executeQuery(query);
                while (this.rs.next()) {
                    Departamentos dep = new Departamentos();
                    dep.setId_departamento(this.rs.getLong("id_departamento"));
                    dep.setDepartamento_codigo(this.rs.getInt("departamento_codigo"));
                    dep.setDepartamento_nombre(this.rs.getString("departamento_nombre"));
                    dep.setFecha_hora_crea(this.rs.getString("fecha_hora_crea"));
                    dep.setFecha_hora_modifica(this.rs.getString("fecha_hora_modifica"));
                    departamentos.add(dep);
                }
            }
        } catch (Exception e) {
            System.out.println("$$$$ " + e.getMessage());
            e.printStackTrace();
        }
        return departamentos;
    }
    
    public List<Empleados> todosEmpleados() {
        System.out.println("@@@@@@@@ entro al todos");
        List<Empleados> empleados = new ArrayList<Empleados>();
        try {
            this.query = "SELECT * FROM empleados";
            if (this.getConnection() != null) {
                this.stm = this.getConnection().createStatement();
                this.rs = this.stm.executeQuery(query);
                while (this.rs.next()) {
                    Empleados emp = new Empleados();
                    emp.setId_empleado(this.rs.getLong("id_empleado"));
                    emp.setDocumento_tipo(this.rs.getString("documento_tipo"));
                    emp.setDocumento_numero(this.rs.getInt("documento_numero"));
                    emp.setNombres(this.rs.getString("nombres"));
                    emp.setApellidos(this.rs.getString("apellidos"));
                    emp.setDepartamentos_id(this.rs.getInt("departamentos_id"));
                    emp.setCiudad(this.rs.getString("ciudad"));
                    emp.setDireccion(this.rs.getString("direccion"));
                    emp.setCorreo_electronico(this.rs.getString("correo_electronico"));
                    emp.setTelefono(this.rs.getInt("telefono"));
                    emp.setFecha_hora_crea(this.rs.getString("fecha_hora_crea"));
                    emp.setFecha_hora_modifica(this.rs.getString("fecha_hora_modifica"));
                    empleados.add(emp);
                }
            }
        } catch (Exception e) {
            System.out.println("$$$$ " + e.getMessage());
            e.printStackTrace();
        }
        return empleados;
    }

    public boolean eliminar(Long id_departamento){
        boolean validador = false;
        this.query="DELETE FROM departamentos WHERE id_departamento=?";
        try{
            if(this.getConnection()!=null){
                this.pstm=this.getConnection().prepareStatement(query);
                this.pstm.setLong(1, id_departamento);
                int r = this.pstm.executeUpdate();
                if(r == 1){
                    validador = true;
                }
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return validador;
    }
    
    public boolean eliminarEmpleados(Long id_empleado){
        boolean validador = false;
        this.query="DELETE FROM empleados WHERE id_empleado=?";
        try{
            if(this.getConnection()!=null){
                this.pstm=this.getConnection().prepareStatement(query);
                this.pstm.setLong(1, id_empleado);
                int r = this.pstm.executeUpdate();
                if(r == 1){
                    validador = true;
                }
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return validador;
    }
    
    public boolean actualizar(Departamentos dep){
        boolean validador = false;
        this.query = "UPDATE departamentos SET departamento_codigo = ?, departamento_nombre = ?, fecha_hora_modifica = NOW() WHERE id_departamento = ?";
        try{
            if (this.getConnection()!=null) {
                this.pstm = this.getConnection().prepareStatement(query);
                this.pstm.setInt(1, dep.getDepartamento_codigo());
                this.pstm.setString(2, dep.getDepartamento_nombre());
                this.pstm.setLong(3, dep.getId_departamento());
                int r = this.pstm.executeUpdate();
                System.out.println("@@@@@@@@@@@negocio update" + r);
                if (r == 1) {
                    validador = true;
                }
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return validador;
    }
    
    public boolean actualizarEmpleados(Empleados emp){
        boolean validador = false;
        this.query = "UPDATE empleados SET documento_tipo = ?, documento_numero = ?, nombres = ?, apellidos = ?, departamentos_id = ?, ciudad = ?, direccion = ?, correo_electronico = ?, telefono = ?, fecha_hora_modifica = NOW() WHERE id_empleado = ?";
        try{
            if (this.getConnection()!=null) {
                this.pstm = this.getConnection().prepareStatement(query);
                this.pstm.setString(1, emp.getDocumento_tipo());
                this.pstm.setInt(2, emp.getDocumento_numero());
                this.pstm.setString(3, emp.getNombres());
                this.pstm.setString(4, emp.getApellidos());
                this.pstm.setInt(5, emp.getDepartamentos_id());
                this.pstm.setString(6, emp.getCiudad());
                this.pstm.setString(7, emp.getDireccion());
                this.pstm.setString(8, emp.getCorreo_electronico());
                this.pstm.setInt(9, emp.getTelefono());
                this.pstm.setLong(10, emp.getId_empleado());
                int r = this.pstm.executeUpdate();
                System.out.println("@@@@@@@@@@@negocio update" + r);
                if (r == 1) {
                    validador = true;
                }
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return validador;
    }
    
    public boolean insertar(Departamentos dep){
        boolean validador = false;
        this.query = "INSERT INTO departamentos(departamento_codigo,departamento_nombre,fecha_hora_crea) values(?,?,NOW())";
        try{
            if(this.getConnection()!=null){
                this.pstm = this.getConnection().prepareStatement(query);
                this.pstm.setInt(1, dep.getDepartamento_codigo());
                this.pstm.setString(2, dep.getDepartamento_nombre());
                int r = this.pstm.executeUpdate();
                if (r == 1) {
                    validador = true;
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return validador;
    }
    
    public boolean insertarEmpleado(Empleados emp){
        boolean validador = false;
        this.query = "INSERT INTO empleados(documento_tipo,documento_numero,nombres,apellidos,departamentos_id,ciudad,direccion,correo_electronico,telefono,fecha_hora_crea) values(?,?,?,?,?,?,?,?,?,NOW())";
        try{
            if(this.getConnection()!=null){
                this.pstm = this.getConnection().prepareStatement(query);
                this.pstm.setString(1, emp.getDocumento_tipo());
                this.pstm.setInt(2, emp.getDocumento_numero());
                this.pstm.setString(3, emp.getNombres());
                this.pstm.setString(4, emp.getApellidos());
                this.pstm.setInt(5, emp.getDepartamentos_id());
                this.pstm.setString(6, emp.getCiudad());
                this.pstm.setString(7, emp.getDireccion());
                this.pstm.setString(8, emp.getCorreo_electronico());
                this.pstm.setInt(9, emp.getTelefono());
                int r = this.pstm.executeUpdate();
                if (r == 1) {
                    validador = true;
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return validador;
    }
    
    }

