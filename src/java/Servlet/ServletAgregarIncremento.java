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
public class ServletAgregarIncremento extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            try{
                String Nom = req.getParameter("nom");
                String id_ven = req.getParameter("id_ven");
                String incre = req.getParameter("incre"); 
                String nombre;
                String re1 = "";
                String re2 = "";
                String pes_re1 = "";
                String pes_re2 = "";
                try{
                    nombre = (String)req.getSession().getAttribute("nombre"); 
                    re1 = (String)req.getSession().getAttribute("re1"); 
                    re2 = (String)req.getSession().getAttribute("re2"); 
                    pes_re1 = (String)req.getSession().getAttribute("pes_re1"); 
                    pes_re2 = (String)req.getSession().getAttribute("pes_re2"); 
                } catch (Exception e){
                    res.sendRedirect("index.jsp");
                    nombre = "";
                }
                if(nombre.equals("")){
                    res.sendRedirect("index.jsp");
                } else {
                    Conexion conexion = new Conexion();
                    conexion.conectar();                  
                    conexion.update("UPDATE destdina natural join chabilidad natural join musuario natural join mpersonaje SET val_esd = val_esd + " + incre +" where nic_usu = '" + nombre +"' and nom_hab = '" + id_ven +"' and nom_per = '" + Nom +"';");                    
                    conexion.update("UPDATE dinventario natural join cmolecula natural join musuario SET can_mol = can_mol - " + pes_re1 +" where nic_usu = '" + nombre +"' and nom_mol = '" + re1 +"';");                    
                    conexion.update("UPDATE dinventario natural join cmolecula natural join musuario SET can_mol = can_mol - " + pes_re2 +" where nic_usu = '" + nombre +"' and nom_mol = '" + re2 +"';");
                    res.sendRedirect("Perfil.jsp");                     
                }                
            } catch(Exception e){
                System.out.println("Invalido " + e.getMessage());
                req.getSession().setAttribute("Error", "Ocurrio un error interno en el servidor."); 
                res.sendRedirect("Error.jsp"); 
            }
    }      
}