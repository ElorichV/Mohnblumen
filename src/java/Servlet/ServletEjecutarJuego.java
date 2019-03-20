/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    
/**
 *
 * @author Jos
 */
package Servlet;
  
import java.io.IOException;
import Control.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jos
 */
public class ServletEjecutarJuego extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            Runtime.getRuntime().exec("C:\\usarMenu.bat");              
            execute("C:\\usarMenu.bat");            
            System.out.print("hola");
        } catch (Exception e) { 
            System.out.print(e.getMessage());
        }
        res.sendRedirect("juego.jsp"); 
    }      
    public static void execute(String comando) {
        try {
            String linea;
            Process p = Runtime.getRuntime().exec(comando);
            BufferedReader input = new BufferedReader (new InputStreamReader(p.getInputStream()));            
            while ((linea = input.readLine()) != null) {
                System.out.println(linea);
            }
            input.close();
        }
        catch (Exception err) {
            err.printStackTrace();
        }
    } 
}