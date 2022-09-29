/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.taller3empleadosadmini.entities;

/**
 *
 * @author Dev
 */
public class Departamentos {
    private Long id_departamento;
    private int departamento_codigo;
    private String departamento_nombre, fecha_hora_crea, fecha_hora_modifica;
    
    public Departamentos(){
        
    }

    public Departamentos(Long id_departamento, int departamento_codigo, String departamento_nombre, String fecha_hora_crea, String fecha_hora_modifica) {
        this.id_departamento = id_departamento;
        this.departamento_codigo = departamento_codigo;
        this.departamento_nombre = departamento_nombre;
        this.fecha_hora_crea = fecha_hora_crea;
        this.fecha_hora_modifica = fecha_hora_modifica;
    }

    public Long getId_departamento() {
        return id_departamento;
    }

    public void setId_departamento(Long id_departamento) {
        this.id_departamento = id_departamento;
    }

    public int getDepartamento_codigo() {
        return departamento_codigo;
    }

    public void setDepartamento_codigo(int departamento_codigo) {
        this.departamento_codigo = departamento_codigo;
    }

    public String getDepartamento_nombre() {
        return departamento_nombre;
    }

    public void setDepartamento_nombre(String departamento_nombre) {
        this.departamento_nombre = departamento_nombre;
    }

    public String getFecha_hora_crea() {
        return fecha_hora_crea;
    }

    public void setFecha_hora_crea(String fecha_hora_crea) {
        this.fecha_hora_crea = fecha_hora_crea;
    }

    public String getFecha_hora_modifica() {
        return fecha_hora_modifica;
    }

    public void setFecha_hora_modifica(String fecha_hora_modifica) {
        this.fecha_hora_modifica = fecha_hora_modifica;
    }

    @Override
    public String toString() {
        return "Departamentos{" + "id_departamento=" + id_departamento + ", departamento_codigo=" + departamento_codigo + ", departamento_nombre=" + departamento_nombre + ", fecha_hora_crea=" + fecha_hora_crea + ", fecha_hora_modifica=" + fecha_hora_modifica + '}';
    }
    
    
}
