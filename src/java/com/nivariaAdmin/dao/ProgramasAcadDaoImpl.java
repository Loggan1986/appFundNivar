package com.nivariaAdmin.dao;

import com.nivariaAdmin.db.ConectarDB;
import com.nivariaAdmin.modelo.ProgramasAcad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JhonjosArpie30
 */
public class ProgramasAcadDaoImpl implements IDAO{
    
    ConectarDB connect = new ConectarDB();
    PreparedStatement pst = null;
    ResultSet rst = null;
    String rsp;
    ProgramasAcad prog;

    @Override
    public String insertar(Object obj) throws SQLException {
        ProgramasAcad objProg = (ProgramasAcad) obj;
        
        try {
            pst = connect.conectar().prepareStatement("INSERT INTO t_funniv_pr0g VALUES(null,?,?,?,?,?)");
            pst.setString(1, objProg.getCodigoProg());
            pst.setString(2, objProg.getNombre());
            pst.setString(3, objProg.getTipoProg());
            pst.setString(4, objProg.getCreditos());
            pst.setString(5, objProg.getEstado());
            
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
    public String eliminar(Object pk) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String modificar(Object obj) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProgramasAcad> listar() throws SQLException {
        List<ProgramasAcad> ListarProgramas;
        ListarProgramas = new ArrayList<>();
        
        try {
            pst = connect.conectar().prepareStatement("SELECT * FROM t_funniv_pr0g WHERE estado = 'Activo'");
            rst = pst.executeQuery();
            while (rst.next()) {                
                ListarProgramas.add(ProgramasAcad.Load(rst));
            }
        } catch (SQLException e) {
            System.out.println("Error en la consulta: " + e);
        }finally{
            if (pst != null) {
                pst.close();
            }
            if (rst != null) {
                rst.close();
            }
            connect.desconectar();
        }
        return ListarProgramas;
    }

    @Override
    public Object buscarPorID(Object id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int contar() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean existe(Object id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> busquedaPorParametro(String field, Object param) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> existeUsuario(String usuario, String clave) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String generarCodigo() throws SQLException {
        String codigo = null;
        try {
            pst = connect.conectar().prepareStatement("");
            rst = pst.executeQuery();
            while(rst.next()){
                
                switch(rst.getString(+1).length()){
                    case 1:
                        codigo = "PR0G000" + rst.getString(+1) + "4C4D";
                        break;
                    case 2:
                        codigo = "PR0G00" + rst.getString(+1) + "4C4D";
                        break;
                    case 3:
                        codigo = "PR0G0" + rst.getString(+1) + "4C4D";
                        break;
                    case 4:
                        codigo = "PR0G" + rst.getString(+1) + "4C4D";
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
