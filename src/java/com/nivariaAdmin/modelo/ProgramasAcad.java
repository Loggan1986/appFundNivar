package com.nivariaAdmin.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JHonjosArpie
 */
public class ProgramasAcad {
    private int idPrograma;
    private String codigoProg;
    private String nombre;
    private String tipoProg;
    private String creditos;
    private String estado;

    public ProgramasAcad() {
    }

    public ProgramasAcad(int idPrograma, String codigoProg, String nombre, String tipoProg, String creditos, String estado) {
        this.idPrograma = idPrograma;
        this.codigoProg = codigoProg;
        this.nombre = nombre;
        this.tipoProg = tipoProg;
        this.creditos = creditos;
        this.estado = estado;
    }
    
    public static ProgramasAcad Load(ResultSet rs)throws SQLException{
        ProgramasAcad objPrAc = new ProgramasAcad();
        
        objPrAc.setIdPrograma(rs.getInt(1));
        objPrAc.setCodigoProg(rs.getString(2));
        objPrAc.setNombre(rs.getString(3));
        objPrAc.setTipoProg(rs.getString(4));
        objPrAc.setCreditos(rs.getString(5));
        objPrAc.setEstado(rs.getString(6));
        
        return objPrAc;
    }

    public int getIdPrograma() {
        return idPrograma;
    }

    public void setIdPrograma(int idPrograma) {
        this.idPrograma = idPrograma;
    }

    public String getCodigoProg() {
        return codigoProg;
    }

    public void setCodigoProg(String codigoProg) {
        this.codigoProg = codigoProg;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipoProg() {
        return tipoProg;
    }

    public void setTipoProg(String tipoProg) {
        this.tipoProg = tipoProg;
    }

    public String getCreditos() {
        return creditos;
    }

    public void setCreditos(String creditos) {
        this.creditos = creditos;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "ProgramasAcad{" + "idPrograma=" + idPrograma + ", codigoProg=" + codigoProg + ", nombre=" + nombre + ", tipoProg=" + tipoProg + ", creditos=" + 
                creditos + ", estado=" + estado + '}';
    }
    
    
    
}
