/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;
      
import Control.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jos
 */
public class ServletActualizarPass extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            try{
                String Curp = req.getParameter("curp");
                String Mail = req.getParameter("mail");
                String Pas = req.getParameter("pass");
                
                Conexion conexion = new Conexion();
                conexion.conectar();
                String nombreAuc = ""; 
                nombreAuc = conexion.consultarString("select nic_usu from musuario where curp_usu = '" + Curp+"' and mail_usu = '" + Mail +"';", "nic_usu");
                if(nombreAuc.equals(null))nombreAuc = "";
                if(!nombreAuc.equals("")){
                    conexion.update("UPDATE musuario SET pas_usu = '"+Pas+"' where curp_usu = '"+Curp+"';");
                    req.getSession().setAttribute("nombre", nombreAuc);
                    res.sendRedirect("PasActualizada.jsp");
                } else {
                    req.getSession().setAttribute("Error", "No se ha encontrado el usuario."); 
                    res.sendRedirect("Error.jsp"); 
                } 
            } catch(Exception e){
                System.out.println("Invalido");
                req.getSession().setAttribute("Error", "Ocurrio un error interno en el servidor."); 
                res.sendRedirect("Error.jsp"); 
            }
    } 

}