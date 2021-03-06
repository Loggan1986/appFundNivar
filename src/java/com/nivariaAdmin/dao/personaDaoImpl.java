package com.nivariaAdmin.dao;

import com.nivariaAdmin.db.ConectarDB;
import com.nivariaAdmin.modelo.Persona;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jhonjos_Arpie_30
 */
public class personaDaoImpl implements IDAO{
    
    ConectarDB connect = new ConectarDB();
    PreparedStatement pst = null;
    ResultSet rst = null;
    String rsp;
    Persona Pers;
    

    @Override
    public String insertar(Object obj) throws SQLException {
        Persona objPers = (Persona) obj;
        
        try {
            pst = connect.conectar().prepareStatement("INSERT INTO t_funniv_p3rs VALUES (null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, objPers.getCodigoRegistro());
            pst.setString(2, objPers.getNombres());
            pst.setString(3, objPers.getApellidos());
            pst.setString(4, objPers.getNroDocumento());
            pst.setInt(5, objPers.getIdTipoDocumento());
            pst.setString(6, objPers.getLugarExpedicion());
            pst.setDate(7, objPers.getFechaNacimiento());
            pst.setString(8, objPers.getLugarNacimiento());
            pst.setString(9, objPers.getNroLibretaMilitar());
            pst.setString(10, objPers.getGenero());
            pst.setString(11, objPers.getEstadoCivil());
            pst.setInt(12, objPers.getIdCiudad());
            pst.setInt(13, objPers.getIdDireccion());
            pst.setString(14, objPers.getTelefono());
            pst.setString(15, objPers.getCelular());
            pst.setString(16, objPers.geteMail());
            pst.setInt(17, objPers.getEstrato());
            pst.setDate(18, objPers.getFechaRegistro());
            pst.setString(19, objPers.getEstado());
            
            pst.executeUpdate();
            
            rsp = "El registro se ha realizado exitosamente";
            
        } catch (SQLException e) {
            throw new SQLException("Error al registrar: " + e.toString());
        }finally{
            if (pst != null) {
                pst.close();
            }            
            connect.desconectar();            
        }
        return rsp;
    }

    @Override
    public String eliminar(Object pk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String modificar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Persona> listar()throws SQLException{
        List<Persona> ListarPers;
        ListarPers = new ArrayList<>();
        try {
            pst = connect.conectar().prepareStatement("SELECT * FROM t_funniv_p3rs");
            rst = pst.executeQuery();
            while (rst.next()) {                
                ListarPers.add(Persona.load(rst));
            }
        } catch (SQLException e) {
            System.out.println("Error en la consulta: " + e);
        }finally{
            if(pst!=null){
                pst.close();
            }
            if(rst!=null){
                rst.close();
            }            
            connect.desconectar();
        }
        return ListarPers;
    }

    @Override
    public Object buscarPorID(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int contar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean existe(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> busquedaPorParametro(String field, Object param) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> existeUsuario(String usuario, String clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String generarCodigo() throws SQLException {
        PreparedStatement pt = null;
        ResultSet pr = null;
        String codigo = null;
        try {
            pst = connect.conectar().prepareStatement("SELECT COUNT(idPers) FROM t_funniv_p3rs");
            rst = pst.executeQuery();
            while(rst.next()){
                
                switch(rst.getString(+1).length()){
                    case 1:
                        codigo = "P3R5000" + rst.getString(+1) + "N4";
                        break;
                    case 2:
                        codigo = "P3R500" + rst.getString(+1) + "N4";
                        break;
                    case 3:
                        codigo = "P3R50" + rst.getString(+1) + "N4";
                        break;
                    case 4:
                        codigo = "P3R5" + rst.getString(+1) + "N4";
                        break;
                   default: break;
                     
                    
                }
         }
            
            
        } catch (SQLException e) {
            throw new SQLException("Erro al generar código: "+e.toString());

        }
         return codigo;
    }
    
}
