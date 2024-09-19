package org.upana;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Consumidor implements Runnable {

    private final BufferCompartido buffer;

    private final String idConsumidor;

   //private PrintWriter impresora;
    //variable global
    private static final Lock lock = new ReentrantLock(); // se puede utilizar el sincronized pero tambien el lock funciona como un objeto

    //constructor
    public Consumidor(BufferCompartido buffer, String idConsumidor )  { //throws IOException, se quito esto porque ya no se ocupa la variable impresora
        this.buffer = buffer;
        this.idConsumidor = idConsumidor;
       //this.impresora = new PrintWriter(new FileWriter(rutaArchivo, true));// el true que puedo agregar el contenido siempre
    }
    @Override
    public void run(){
      // Connection conexion = null; //hacer la conexion a la base de datos
        PreparedStatement ps = null; // para insertar la intruccion sql


        try (Connection conex = Conexion.getConexion()){



            while(true){
                String mensaje = buffer.consumir();
               /* if (mensaje.startsWith("END")){ // aqui compara si es el final del buffer ya que le ultimo dato es el END, entonces saledel bucle while
                    break;
                }*/
                // cuerpo de nuestra logica
                lock.lock(); // bloquea hasta que se ejecute todo
                try{
                    //se divide por comas el mensaje
                    String[] partes = mensaje.split(",", 3); // el 3 porque lo que leera por cada palabra, y tiene tres nombre, apellido y el identificador
                    if (partes.length == 3){// aqui se valida que si tenga el tamaño de 3 nombre, apellido y identificador
                        String nombre = partes[0];
                        String apellido = partes[1];
                        String idProductor = partes[2];

                        String sql = "INSERT INTO Consumido (nombre, apellido, id_productor, id_consumidor, fecha) VALUES (?, ?, ?, ?, NOW())";
                        ps = conex.prepareStatement(sql); // para que se pueda ejecutar la consulta
                        ps.setString(1, nombre);
                        ps.setString(2, apellido);
                        ps.setString(3, idProductor);
                        ps.setString(4, idConsumidor);
                        ps.executeUpdate(); //ejecuta el insert

                        System.out.println("Condumidos por: " + idConsumidor + ", "+ nombre + ", " + apellido + ", " + idProductor + ", " + idConsumidor);

                    }
                }finally {

                    lock.unlock(); // Este desloquea cuando ya se termina todos los datos de leer y ya puede salir de la ejecucion
                }
            }
        }catch (InterruptedException | SQLException e){
            Thread.currentThread().interrupt();

        }finally {
            try {
                if(ps != null)
                    ps.close(); // también se cierra el prepareStatement, antes de la conexión

            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
}
