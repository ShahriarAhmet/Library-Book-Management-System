/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Project;
import java.sql.*;
/**
 *
 * @author user
 */
public class ConnectionEnable {
    public static Connection getCon()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management_system","root","" );
            return con;
        } catch (Exception e) {
            
            System.out.println(e);
            return null;  
        }
    }   
}
