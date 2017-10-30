
package com.nivariaAdmin.modelo;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JhonjosArpie_31
 */
public class PreInscripcion {
    private int idPreinscripcion;
    private String codigoPreinscripcion;
    private Date fechaRegistro;
    private int idPersona;
    private int idDetalleProgAcademic;
    private int idLiquidacion;
    private String estado;

    public PreInscripcion() {
    }

    public PreInscripcion(int idPreinscripcion, String codigoPreinscripcion, Date fechaRegistro, int idPersona, int idDetalleProgAcademic, int idLiquidacion, String estado) {
        this.idPreinscripcion = idPreinscripcion;
        this.codigoPreinscripcion = codigoPreinscripcion;
        this.fechaRegistro = fechaRegistro;
        this.idPersona = idPersona;
        this.idDetalleProgAcademic = idDetalleProgAcademic;
        this.idLiquidacion = idLiquidacion;
        this.estado = estado;
    }
    
    public static PreInscripcion load(ResultSet rs)throws SQLException{
        PreInscripcion objPreInsc = new PreInscripcion();
        
        objPreInsc.setIdPreinscripcion(rs.getInt(1));
        objPreInsc.setCodigoPreinscripcion(rs.getString(2));
        objPreInsc.setFechaRegistro(rs.getDate(3));
        objPreInsc.setIdPersona(rs.getInt(4));
        objPreInsc.setIdDetalleProgAcademic(rs.getInt(5));
        objPreInsc.setIdLiquidacion(rs.getInt(6));
        objPreInsc.setEstado(rs.getString(7));
        
        return objPreInsc;
        
    }

    public int getIdPreinscripcion() {
        return idPreinscripcion;
    }

    public void setIdPreinscripcion(int idPreinscripcion) {
        this.idPreinscripcion = idPreinscripcion;
    }

    public String getCodigoPreinscripcion() {
        return codigoPreinscripcion;
    }

    public void setCodigoPreinscripcion(String codigoPreinscripcion) {
        this.codigoPreinscripcion = codigoPreinscripcion;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public int getIdDetalleProgAcademic() {
        return idDetalleProgAcademic;
    }

    public void setIdDetalleProgAcademic(int idDetalleProgAcademic) {
        this.idDetalleProgAcademic = idDetalleProgAcademic;
    }

    public int getIdLiquidacion() {
        return idLiquidacion;
    }

    public void setIdLiquidacion(int idLiquidacion) {
        this.idLiquidacion = idLiquidacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "PreInscripcion{" + "idPreinscripcion=" + idPreinscripcion + ", codigoPreinscripcion=" + codigoPreinscripcion + ", fechaRegistro=" + fechaRegistro + 
                ", idPersona=" + idPersona + ", idDetalleProgAcademic=" + idDetalleProgAcademic + ", idLiquidacion=" + idLiquidacion + ", estado=" + estado + '}';
    }
    
    
    
    
}
