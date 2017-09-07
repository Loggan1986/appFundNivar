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
    

    @Override
    public String insertar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
    public String generarCodigo() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
