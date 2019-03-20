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
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jos
 */
public class ServletIniciar extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            try{
                String Nic = req.getParameter("Nic");
                String Pas = req.getParameter("Pass");
                if(Pas.equals("")){
                    Pas = " ";
                }
                String password = "";
                Conexion conexion = new Conexion();
                conexion.conectar();
                password = conexion.consultarString("select pas_usu from musuario where nic_usu = '"+ Nic + "';", "pas_usu");
                if(Pas.equals(password)){
                    req.getSession().setAttribute("nombre", Nic); 
                    res.sendRedirect("Perfil.jsp"); 
                } else {
                    req.getSession().setAttribute("Error", "Datos incorrectos."); 
                    res.sendRedirect("Error.jsp"); 
                }
            } catch(Exception e){
                System.out.println("Invalido " + e.getMessage());
                req.getSession().setAttribute("Error", "Ocurrio un error interno en el servidor."); 
                res.sendRedirect("Error.jsp"); 
            }
    }      
}