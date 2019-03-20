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
public class ServletRegistro extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            try{
                String Nombre = req.getParameter("nom");
                String App = req.getParameter("app");
                String Apm = req.getParameter("apm");
                String Mail = req.getParameter("mail");
                String Year = req.getParameter("an");
                String Month = req.getParameter("me");
                String Day = req.getParameter("di");
                String Genero = req.getParameter("gen");
                String Curp = req.getParameter("curp");
                String Dep = req.getParameter("dep");
                if(Dep.equals("x")){
                    Dep = req.getParameter("de");
                }
                String Nic = req.getParameter("nic");
                String Pas = req.getParameter("pas");
                Conexion conexion = new Conexion();
                conexion.conectar();
                int corre = 0;
                int clave = 0;
                int nickname = 0;
                try{
                    corre = conexion.consultarInt("select id_usu from musuario where mail_usu = '" + Mail +"';","id_usu");                    
                } catch (Exception e){
                    corre = 0;
                }
                try{
                    clave = conexion.consultarInt("select id_usu from musuario where curp_usu = '" + Curp +"';", "id_usu");                    
                } catch (Exception e){
                    clave = 0;
                }
                try{
                    nickname = conexion.consultarInt("select id_usu from musuario where nic_usu = '" + Nic +"';", "id_usu");                   
                } catch (Exception e){
                    nickname = 0;
                }
                if(corre == 0){
                    if(clave == 0){
                        if(nickname == 0){
                            conexion.update("call agregar_usuario('" + Nombre +"','" + App +"','" + Apm +"','" + Mail +"','" + Year + "-" + Month + "-"+ Day + "','" + Genero +"','" + Curp +"','" + Dep +"','" + Nic +"','" + Pas +"','2')");
                            req.getSession().setAttribute("nombre", Nic); 
                            res.sendRedirect("Perfil.jsp"); 
                        } else {                            
                            req.getSession().setAttribute("Error", "Nickname perteneciente a otro jugador."); 
                            res.sendRedirect("Error.jsp"); 
                        }
                    } else {
                        req.getSession().setAttribute("Error", "CURP perteneciente a otro usuario."); 
                        res.sendRedirect("Error.jsp"); 
                    }
                } else {
                    req.getSession().setAttribute("Error", "Correo perteneciente a otro jugador."); 
                    res.sendRedirect("Error.jsp"); 
                }                   
            } catch(Exception e){
                System.out.println("Invalido");
                req.getSession().setAttribute("Error", "Ocurrio un error interno en el servidor."); 
                res.sendRedirect("Error.jsp"); 
            }
    }      
}
