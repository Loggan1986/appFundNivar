package com.nivariaAdmin.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ConectarDB {
    private String driver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/nivari@admin1";
    private String usuario = "@dmin_nivaria";
    private String password = "nivari@admi";
    
    Connection conection = null;
    
   public ConectarDB(){
       
   }
   
   public Connection conectar() throws SQLException{
        try {
            Class.forName(driver);
            conection =  DriverManager.getConnection(url, usuario, password);
       
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConectarDB.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return conection;
   }
   
   public void desconectar()throws SQLException{
       if(conection!=null){
           if(conection.isClosed()){
                conection.close();
           }
       }
      
   }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public Connection getConex() {
        return conection;
    }

    public void setConex(Connection conex) {
        this.conection = conex;
    }
   
   
}
