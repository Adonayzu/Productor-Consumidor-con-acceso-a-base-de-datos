package org.upana;

//manejar conexiones a la base de datos
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    public static Connection getConexion(){ //metodo estatico que devuelve un objeto que se LLama getConnection
        Connection conexion = null; // permite al metodo devolver null si pasa algun error
        var baseDatos = "tarea_productor";
        var url = "jdbc:mysql://localhost:3308/" + baseDatos;
        var usuario = "root";
        var password = "";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver"); //controlador JDBC de MySQL
            conexion = DriverManager.getConnection(url, usuario, password); //Hace la conexion
        }catch (Exception e){
            System.out.println("Error al conectarnos a la BD: " + e.getMessage());
        }finally {
            try {
                if(conexion == null)
                    conexion.close(); //cerrar la conexión

            }catch (Exception e){
                e.printStackTrace();
            }


        }
        return conexion;
    }

}
