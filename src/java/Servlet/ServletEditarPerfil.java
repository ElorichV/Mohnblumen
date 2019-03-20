/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
public class ServletEditarPerfil extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            try{
                String nombre = "";
                
                nombre = (String)req.getSession().getAttribute("nombre");
                String Mail = req.getParameter("mail");
                String Dep = req.getParameter("dep");
                if(Dep.equals("x")){
                    Dep = req.getParameter("de");
                }
                String Pas = req.getParameter("pass");
                Conexion conexion = new Conexion();
                conexion.conectar();
                conexion.update("UPDATE musuario SET mail_usu = '"+Mail+"' where nic_usu = '"+nombre+"';");
                conexion.update("UPDATE musuario SET id_dep = '"+Dep+"' where nic_usu = '"+nombre+"';");
                conexion.update("UPDATE musuario SET pas_usu = '"+Pas+"' where nic_usu = '"+nombre+"';");
                res.sendRedirect("DatosActualizados.jsp");
            } catch(Exception e){
                System.out.println("Invalido");
                req.getSession().setAttribute("Error", "Ocurrio un error interno en el servidor."); 
                res.sendRedirect("Error.jsp"); 
            }
    }      
}
