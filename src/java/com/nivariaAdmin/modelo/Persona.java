package com.nivariaAdmin.modelo;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Jhonjos_Arpie_30
 */
public class Persona {
    private int idPersona;
    private String codigoRegistro;
    private String nombres;
    private String apellidos;
    private String nroDocumento;
    private int idTipoDocumento;
    private String lugarExpedicion;
    private Date fechaNacimiento;
    private String lugarNacimiento;
    private String nroLibretaMilitar;
    private String genero;
    private String estadoCivil;
    private int idCiudad;
    private int idDireccion;
    private String telefono;
    private String celular;
    private String eMail;
    private int estrato;
    private Date fechaRegistro;
    private String estado;

    public Persona() {
    }

    public static Persona load(ResultSet rs)throws SQLException{
        Persona objPers = new Persona();
        
        objPers.setIdPersona(rs.getInt(1));
        objPers.setCodigoRegistro(rs.getString(2));
        objPers.setNombres(rs.getString(3));
        objPers.setApellidos(rs.getString(4));
        objPers.setNroDocumento(rs.getString(5));
        objPers.setIdTipoDocumento(rs.getInt(6));
        objPers.setLugarExpedicion(rs.getString(7));
        objPers.setFechaNacimiento(rs.getDate(8));
        objPers.setLugarNacimiento(rs.getString(9));
        objPers.setNroLibretaMilitar(rs.getString(10));
        objPers.setGenero(rs.getString(11));
        objPers.setEstadoCivil(rs.getString(12));
        objPers.setIdCiudad(rs.getInt(13));
        objPers.setIdCiudad(rs.getInt(14));
        objPers.setTelefono(rs.getString(15));
        objPers.setCelular(rs.getString(16));
        objPers.seteMail(rs.getString(17));
        objPers.setEstrato(rs.getInt(18));
        objPers.setFechaRegistro(rs.getDate(19));
        objPers.setEstado(rs.getString(20));
        
        return objPers;
    }

    public Persona(int idPersona, String codigoRegistro, String nombres, String apellidos, String nroDocumento, int idTipoDocumento, String lugarExpedicion, 
            Date fechaNacimiento, String lugarNacimiento, String nroLibretaMilitar, String genero, String estadoCivil, int idCiudad, int idDireccion, String telefono, 
            String celular, String eMail, int estrato, Date fechaRegistro, String estado) {
        this.idPersona = idPersona;
        this.codigoRegistro = codigoRegistro;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.nroDocumento = nroDocumento;
        this.idTipoDocumento = idTipoDocumento;
        this.lugarExpedicion = lugarExpedicion;
        this.fechaNacimiento = fechaNacimiento;
        this.lugarNacimiento = lugarNacimiento;
        this.nroLibretaMilitar = nroLibretaMilitar;
        this.genero = genero;
        this.estadoCivil = estadoCivil;
        this.idCiudad = idCiudad;
        this.idDireccion = idDireccion;
        this.telefono = telefono;
        this.celular = celular;
        this.eMail = eMail;
        this.estrato = estrato;
        this.fechaRegistro = fechaRegistro;
        this.estado = estado;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getCodigoRegistro() {
        return codigoRegistro;
    }

    public void setCodigoRegistro(String codigoRegistro) {
        this.codigoRegistro = codigoRegistro;
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

    public String getNroDocumento() {
        return nroDocumento;
    }

    public void setNroDocumento(String nroDocumento) {
        this.nroDocumento = nroDocumento;
    }

    public int getIdTipoDocumento() {
        return idTipoDocumento;
    }

    public void setIdTipoDocumento(int idTipoDocumento) {
        this.idTipoDocumento = idTipoDocumento;
    }

    public String getLugarExpedicion() {
        return lugarExpedicion;
    }

    public void setLugarExpedicion(String lugarExpedicion) {
        this.lugarExpedicion = lugarExpedicion;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getLugarNacimiento() {
        return lugarNacimiento;
    }

    public void setLugarNacimiento(String lugarNacimiento) {
        this.lugarNacimiento = lugarNacimiento;
    }

    public String getNroLibretaMilitar() {
        return nroLibretaMilitar;
    }

    public void setNroLibretaMilitar(String nroLibretaMilitar) {
        this.nroLibretaMilitar = nroLibretaMilitar;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public int getIdCiudad() {
        return idCiudad;
    }

    public void setIdCiudad(int idCiudad) {
        this.idCiudad = idCiudad;
    }

    public int getIdDireccion() {
        return idDireccion;
    }

    public void setIdDireccion(int idDireccion) {
        this.idDireccion = idDireccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public int getEstrato() {
        return estrato;
    }

    public void setEstrato(int estrato) {
        this.estrato = estrato;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Persona{" + "idPersona=" + idPersona + ", codigoRegistro=" + codigoRegistro + ", nombres=" + nombres + ", apellidos=" + apellidos + 
                ", nroDocumento=" + nroDocumento + ", idTipoDocumento=" + idTipoDocumento + ", lugarExpedicion=" + lugarExpedicion + ", fechaNacimiento=" + fechaNacimiento + 
                ", lugarNacimiento=" + lugarNacimiento + ", nroLibretaMilitar=" + nroLibretaMilitar + ", genero=" + genero + ", estadoCivil=" + estadoCivil + 
                ", idCiudad=" + idCiudad + ", idDireccion=" + idDireccion + ", telefono=" + telefono + ", celular=" + celular + ", eMail=" + eMail + ", estrato=" + estrato + 
                ", fechaRegistro=" + fechaRegistro + ", estado=" + estado + '}';
    }
    
       
}
