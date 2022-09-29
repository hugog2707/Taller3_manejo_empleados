/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.taller3empleadosadmini.entities;

/**
 *
 * @author Dev
 */
public class Empleados {

    private Long id_empleado;
    private String documento_tipo, nombres, apellidos, ciudad, direccion, correo_electronico, fecha_hora_crea, fecha_hora_modifica;
    private int documento_numero, departamentos_id, telefono;

    public Empleados() {

    }

    public Empleados(Long id_empleado, String documento_tipo, String nombres, String apellidos, String ciudad, String direccion, String correo_electronico, String fecha_hora_crea, String fecha_hora_modifica, int documento_numero, int departamentos_id, int telefono) {
        this.id_empleado = id_empleado;
        this.documento_tipo = documento_tipo;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.ciudad = ciudad;
        this.direccion = direccion;
        this.correo_electronico = correo_electronico;
        this.fecha_hora_crea = fecha_hora_crea;
        this.fecha_hora_modifica = fecha_hora_modifica;
        this.documento_numero = documento_numero;
        this.departamentos_id = departamentos_id;
        this.telefono = telefono;
    }

    public Long getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(Long id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getDocumento_tipo() {
        return documento_tipo;
    }

    public void setDocumento_tipo(String documento_tipo) {
        this.documento_tipo = documento_tipo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electrónico) {
        this.correo_electronico = correo_electrónico;
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

    public int getDocumento_numero() {
        return documento_numero;
    }

    public void setDocumento_numero(int documento_numero) {
        this.documento_numero = documento_numero;
    }

    public int getDepartamentos_id() {
        return departamentos_id;
    }

    public void setDepartamentos_id(int departamentos_id) {
        this.departamentos_id = departamentos_id;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Empleados{" + "id_empleado=" + id_empleado + ", documento_tipo=" + documento_tipo + ", nombres=" + nombres + ", apellidos=" + apellidos + ", ciudad=" + ciudad + ", direccion=" + direccion + ", correo_electronico=" + correo_electronico + ", fecha_hora_crea=" + fecha_hora_crea + ", fecha_hora_modifica=" + fecha_hora_modifica + ", documento_numero=" + documento_numero + ", departamentos_id=" + departamentos_id + ", telefono=" + telefono + '}';
    }
    
}
