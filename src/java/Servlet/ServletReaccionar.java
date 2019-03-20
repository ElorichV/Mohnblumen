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
import java.util.ArrayList;
import Control.*;
import JavaClass.*;

/**
 *
 * @author Jos
 */
public class ServletReaccionar extends HttpServlet {
    boolean reactivo1 = false, reactivo2 = false, reaccion = false;
    double pes_re1 = 0, pes_re2 = 0;
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try{
                doPost(req, res);
            } catch (Exception e){
                
            }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            try{
                String re1 = (String)req.getParameter("re1");
                System.out.println(re1);
                String re2 = (String)req.getParameter("re2");
                System.out.println(re2);
                String nombre = (String)req.getSession().getAttribute("nombre");
                int numeroReacciones = 0;
                ArrayList<ArrayList>reacciones = new ArrayList();                
                Conexion consulta = new Conexion();                
                consulta.conectar();    
                numeroReacciones = consulta.consultarInt("select MAX(id_ven) from creaccion;", "MAX(id_ven)");
                try{
                    for(int i = 1; i<=numeroReacciones; i++){
                        ArrayList<Reaccion> reaccionAux = new ArrayList();  
                        ArrayList<Integer>ReactPorReaccion = new ArrayList();
                        ReactPorReaccion = consulta.consultarArrayInt("select id_rea from creaccion where id_ven = " + i + " order by id_rea;", "id_rea");        
                        for(int j = 1; j<=ReactPorReaccion.size(); j++){
                            try{                
                                Reaccion reaccionAuxiliar = new Reaccion();
                                reaccionAuxiliar.setId_ven(consulta.consultarInt("select id_ven from creaccion where id_rea = " + ReactPorReaccion.get(j-1) +";", "id_ven"));
                                reaccionAuxiliar.setNom_mol(consulta.consultarString("select nom_mol from creaccion natural join cmolecula where id_rea = " + ReactPorReaccion.get(j-1) +";", "nom_mol"));            
                                reaccionAuxiliar.setId_pom(consulta.consultarInt("select id_pom from creaccion where id_rea = " + ReactPorReaccion.get(j-1) +";", "id_pom"));            
                                reaccionAuxiliar.setCoe_rea(consulta.consultarInt("select coe_rea from creaccion where id_rea = " + ReactPorReaccion.get(j-1) +";", "coe_rea"));            
                                reaccionAuxiliar.setPes_mol(consulta.consultarDouble("select pes_mol from creaccion natural join cmolecula where id_rea = " + ReactPorReaccion.get(j-1) +";", "pes_mol"));            
                                reaccionAux.add(reaccionAuxiliar);            
                            } catch (Exception e){System.out.println("Error en el primer");}
                        }        
                        reacciones.add(reaccionAux);        
                    }
                    for(int i = 1; i<=reacciones.size(); i++){                          
                        ArrayList<Reaccion> reaccionesAuxiliar= reacciones.get(i-1);
                        for(int j = 0; j<reaccionesAuxiliar.size(); j++){
                            Reaccion reaccio = reaccionesAuxiliar.get(j);                          
                            if(reaccio.getNom_mol().equals(re1) && reaccio.getId_pom() == 1){
                                reactivo1 = true;
                                pes_re1 = reaccio.getPes_mol()*((double)reaccio.getCoe_rea());                                
                            } else {
                                if(reaccio.getNom_mol().equals(re2) && reaccio.getId_pom() == 1){
                                    reactivo2 = true;
                                    pes_re2 = reaccio.getPes_mol()*((double)reaccio.getCoe_rea());   
                                }
                            }
                            
                        }
                        if(reactivo1 == true && reactivo2 == true){
                            System.out.println("Redir en 1");
                            req.getSession().setAttribute("reac", Integer.toString(i-1));
                            reactivo1 = false;
                            reactivo2 = false;
                            Suficiente suf = new Suficiente(nombre, re1, re2, pes_re1, pes_re2);                            
                            if(suf.calcular()){
                                      
                                req.getSession().setAttribute("re1", re1);
                                req.getSession().setAttribute("re2", re2);
                                req.getSession().setAttribute("pes_re1", Double.toString(pes_re1));
                                req.getSession().setAttribute("pes_re2", Double.toString(pes_re2));
                                res.sendRedirect("ReaccionExitosa.jsp"); 
                            } else {
                                res.sendRedirect("NoSuficiente.jsp");
                            }                                                         
                            reaccion = true;
                        } else {
                            reactivo1 = false;
                            reactivo2 = false;
                        }                        
                    }                    
                    if(!reaccion){                        
                        res.sendRedirect("Explosion.jsp");                         
                    }
                    reaccion = false;
                } catch (Exception e){System.out.println("Error en el jnlkmprimer");}
            } catch(Exception e){
                System.out.println("Invalido");
                req.getSession().setAttribute("Error", "Ocurrio un error interno en el servidor."); 
                res.sendRedirect("Error.jsp"); 
            }
    }

}