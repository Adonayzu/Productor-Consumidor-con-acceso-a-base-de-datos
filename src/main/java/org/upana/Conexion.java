package org.upana;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    public static Connection getConexion(){
        Connection conexion = null;
        var baseDatos = "tarea_productor";
        var url = "jdbc:mysql://localhost:3308/" + baseDatos;
        var usuario = "root";
        var password = "";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
        }catch (Exception e){
            System.out.println("Error al conectarnos a la BD: " + e.getMessage());
        }
        return conexion;
    }

}