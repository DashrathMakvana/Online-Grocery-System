/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DB;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class DBConnect {
    
    private  static Connection conn;
    
    public static  Connection getConnection()
    {
        try {
            
            if(conn==null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery_project?user=root");
            
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
         return conn;
    }
   
    
}
