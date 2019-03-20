/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */  
package Control;
    
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Jos
 */
public class Conexion {
    public Conexion(){}
    private Connection con;
    private Statement set;
    private ResultSet rs;
    
    public ArrayList consultarArrayDouble(String consulta, String campo) throws SQLException{
        ArrayList<Double> arreglo = new ArrayList();
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        while(rs.next()){
            arreglo.add(rs.getDouble(campo));
        }
        return arreglo;
    }
    
    public ArrayList consultarArrayInt(String consulta, String campo) throws SQLException{
        ArrayList<Integer> arreglo = new ArrayList();
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        while(rs.next()){
            arreglo.add(rs.getInt(campo));
        }
        return arreglo;
    }
    public ArrayList consultarArrayString(String consulta, String campo) throws SQLException{
        ArrayList<String> arreglo = new ArrayList();
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        while(rs.next()){
            arreglo.add(rs.getString(campo));
        }
        return arreglo;
    }    
    public String consultarString(String consulta, String campo) throws SQLException{
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        if(rs.next()){
            return rs.getString(campo);
        }
        return "";
    }
    
    public boolean existe(String consulta) throws SQLException{
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        if(rs.next()){
            return true;
        }
        return false;
    }
    
    public void update(String up) throws SQLException{
        set = con.createStatement();
        set.executeUpdate(up);
    }
    
    public int consultarInt(String consulta, String campo) throws SQLException{
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        if(rs.next()){
            return rs.getInt(campo);
        }
        return 0;
    }
    public double consultarDouble(String consulta, String campo) throws SQLException{
        set = con.createStatement();
        rs = set.executeQuery(consulta);
        if(rs.next()){
            return rs.getDouble(campo);
        }
        return 0;
    }
    public void conectar(){
        String URL = "jdbc:mysql:3306//localhost/mohnblumen";
        String userName = "root";
        String password = "n0m3l0";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            URL = "jdbc:mysql://localhost/mohnblumen";            
            con = DriverManager.getConnection(URL, userName, password);
            System.out.println("Se ha conectado");
            
        } catch(Exception e){
            System.out.println("No se ha conectado");
        } 
    }
}
