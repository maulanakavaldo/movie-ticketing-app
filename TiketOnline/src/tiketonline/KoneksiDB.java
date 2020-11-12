/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tiketonline;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ACER
 */
public class KoneksiDB {
    //membuat variable bertipe Connection
    private static Connection koneksi;
    
    public static Connection getKoneksi(){
        if (koneksi == null){
            try{
                String url = "jdbc:mysql://localhost:3306/db_tiketonline";
                String username = "root";
                String password = "";
                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                
                koneksi = DriverManager.getConnection(url, username, password);
            } catch (SQLException e){
                System.out.println("Gagal membuat koneksi");
            }
        }
        return koneksi;
    }
    
}
