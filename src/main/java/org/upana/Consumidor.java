package org.upana;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
        try(Connection conex = Conexion.getConexion()){
            while(true){
                String mensaje = buffer.consumir();
                if (mensaje.startsWith("END")){ // aqui compara si es el final del buffer ya que le ultimo dato es el END, entonces saledel bucle while
                    break;
                }
                // cuerpo de nuestra logica
                lock.lock(); // bloquea hasta que se ejecute todo
                try{
                    //se divide por comas el mensaje
                    String[] partes = mensaje.split(",", 3); // el 3 porque lo que leera por cada palabra, y tiene tres nombre, apellido y el identificador
                    if (partes.length == 3){// aqui se valida que si tenga el tamaño de 3 nombre, apellido y identificador
                        String nombreCompleto = partes[0] + " " + partes[1];
                        String idProductor = partes[2];
                        String sql = "INSERT INTO Consumido (nombre_completo, id_productor, id_consumidor) VALUES (?, ?, ?)";

                        try (PreparedStatement ps = conex.prepareStatement(sql)){
                            ps.setString(1, nombreCompleto);
                            ps.setString(2, idProductor);
                            ps.setString(3, idConsumidor);
                            ps.executeUpdate();
                        }
                        System.out.println("Condumido por " + idConsumidor + ": " + nombreCompleto + ", " + idProductor + ", " + idConsumidor);


                        /*String salida = nombreCompleto + ", " + idProductor + ", " + idConsumidor;// es la salida que se obtendra de lo leido
                        impresora.write(salida); //con eso se los escribe a la impresora o a la variable o los imprime al archivo
                        impresora.flush(); // para que cierre cuando termina
                        System.out.println("Consumidor por " + idConsumidor + ": " + salida); // Esto es lo que imprimira en la consola
*/
                    }
                }finally {
                    lock.unlock(); // Este desloquea cuando ya se termina todos los datos de leer y ya puede salir de la ejecucion
                }
            }
        }catch (InterruptedException | SQLException e){
            Thread.currentThread().interrupt();

        }/*finally {
            impresora.close();// se cierra la impresora
        }*/
    }
}
