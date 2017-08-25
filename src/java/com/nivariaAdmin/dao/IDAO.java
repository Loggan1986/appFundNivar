package com.nivariaAdmin.dao;

import java.sql.SQLException;
import java.util.List;

public interface IDAO {
    
    public String insertar(Object obj);

    public String eliminar(Object pk);

    public String modificar(Object obj);

    public List<?> listar();

    public Object buscarPorID(Object id);

    public int contar();

    public boolean existe(Object id);
    
    List<?> busquedaPorParametro(String field, Object param);
    
    public List<?> existeUsuario(String usuario, String clave);
    
    public String generarCodigo();
    
}
