<%-- 
    Document   : ReaccionExitosa
    Created on : 26/05/2016, 11:38:19 PM
    
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Control.*"%>
<%@page import="JavaClass.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nombre; 
    String reaux;
    int Re;
    char uno = '\u2081';
    char dos = '\u2082';
    char tres = '\u2083';
    char cuatro = '\u2084';
    char cinco = '\u2085';
    char seis = '\u2086';
    char siete = '\u2087';
    char ocho = '\u2088';
    char nueve = '\u2089';
    char cero = '\u2080';
    
%>

<%
    double cantiti = 0;
    String ven = "";
    boolean aux = false;
    String id_ven = "";    
    Re=3;
    reaux = (String)session.getAttribute("reac");
    Re = Integer.parseInt(reaux);
    Conexion consulta; 
    ArrayList<String> molecula = new ArrayList();
    ArrayList<Double> cantidad = new ArrayList();
    int numeroReacciones = 0;
    ArrayList<ArrayList>reacciones = new ArrayList();
    try{
        nombre = (String)session.getAttribute("nombre");
        
    } catch(Exception e) {
        
    }
    consulta = new Conexion();
    
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
            reaccionAuxiliar.setNom_ven(consulta.consultarString("select nom_ven from creaccion natural join cventaja where id_rea = " + ReactPorReaccion.get(j-1) +";", "nom_ven"));            
            reaccionAuxiliar.setId_pom(consulta.consultarInt("select id_pom from creaccion where id_rea = " + ReactPorReaccion.get(j-1) +";", "id_pom"));            
            reaccionAuxiliar.setCoe_rea(consulta.consultarInt("select coe_rea from creaccion where id_rea = " + ReactPorReaccion.get(j-1) +";", "coe_rea"));            
            reaccionAuxiliar.setPes_mol(consulta.consultarDouble("select pes_mol from creaccion natural join cmolecula where id_rea = " + ReactPorReaccion.get(j-1) +";", "pes_mol"));            
            reaccionAuxiliar.setFor_mol(consulta.consultarString("select for_mol from creaccion natural join cmolecula where id_rea = " + ReactPorReaccion.get(j-1) +";", "for_mol"));            
            reaccionAux.add(reaccionAuxiliar);            
            } catch (Exception e){System.out.println("Error en el primer");}
        }        
        reacciones.add(reaccionAux);        
    }
    } catch (Exception e){System.out.println("Error en el primer");}
    
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%if(nombre.equals("")){
        %><script type="text/javascript">
            window.location="index.jsp";
        </script><%
    }%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Éxito | Mohnblumen</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
  
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>      
    <link rel="shortcut icon" type="image/x-icon" href="img/iICO/icon16.ico">
    <link rel="shortcut icon" type="image/x-icon" sizes="144x144" href="img/ICO/icon144.png">
    <link rel="shortcut icon" type="image/x-icon" sizes="114x114" href="img/ICO/icon114.png">
    <link rel="shortcut icon" type="image/x-icon" sizes="72x72" href="img/ICO/icon72.png">
    <link rel="shortcut icon" type="image/x-icon" href="img/ICO/icon57.png">
</head><!--/head-->
<body ondragstart="return false" onselectstart="return false" oncontextmenu="return false" >
    
    <div id="Se">
        
    </div>

    <header id="header">
                
        <nav class="navbar navbar-inverse navbar-static-top navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="img/ICON2.png" width="150" alt="logo"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="personajes.jsp">Personajes</a></li>
                        <li><a href="hist.jsp">
                                <%if(nombre.equals("")){%>
                                    Historia de las artes 
                                <%}else { %>
                                    Artes 
                                <%}%>
                                Marciales</a></li>
                        <%
                            String react = "";
                            if(nombre.equals("")){
                                react = "react.jsp";
                            } else {
                                react = "allreact.jsp";
                            }
                        %><li><a href="<%=react%>">Reactivos</a></li>
                        <%
                            if(!nombre.equals("")){%>
                                <li><a href="Perfil.jsp"> Mi perfil</a></li>
                                <li><a href="Reacciones.jsp">Usar Reactivos</a></li> 
                                <li><a href="juego.jsp">Jugar</a></li>  
                                <li style="color:#e0e2e4;" onclick="Close()"><a href="#top"><b>Cerrar Sesión</b></a></li>
                        <%  } else {%>
                            <li style="color:#e0e2e4;" onclick="Sec()"><a href="#top"><b>Iniciar Sesión</b></a></li> 
                            <li style="color:#e0e2e4;" onclick="Re(),weba()"><a href="#top"><b>Registrarse</b></a></li>   
                        <%}%>    
                    </ul>
                </div>
            </div>
        </nav>
        
    </header>
    
    
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="center wow fadeInDown">
                <br>
                <center>
                    <font size = 5><b>Reacción Exitosa</b></font><br><font size = 5>
                    <%ArrayList<Reaccion> reaccionesAuxiliar= reacciones.get(Re);  
                    for(int j = 0; j<reaccionesAuxiliar.size(); j++){
                        Reaccion reaccio = reaccionesAuxiliar.get(j);                          
                        if(j == 0){
                        %><%=reaccio.getNom_mol()%>(<%=reaccio.getPes_mol()*((double)reaccio.getCoe_rea())%> mg)<%                             
                        }
                        if(j == 1){
                        %> <b><i class="fa fa-plus"></i></b> <%=reaccio.getNom_mol()%>(<%=reaccio.getPes_mol()*((double)reaccio.getCoe_rea())%> mg)<%                                                   
                        }
                        if(j == 2){
                        %> <i class = "fa fa-arrow-right"></i> <%=reaccio.getNom_mol()%>(<%=reaccio.getPes_mol()*((double)reaccio.getCoe_rea())%> mg)<%                                                   
                        }
                        if(j >2){
                        %> <b><i class="fa fa-plus"></i></b> <%=reaccio.getNom_mol()%>(<%=reaccio.getPes_mol()*((double)reaccio.getCoe_rea())%> mg)<%                                                   
                        }
                    }                    
                    for(int j = 0; j<reaccionesAuxiliar.size(); j++){
                        Reaccion reaccio = reaccionesAuxiliar.get(j);                          
                        if(aux == false){
                            ven = reaccio.getNom_ven();
                            id_ven = reaccio.getNom_ven();
                        }
                        cantiti = cantiti+(reaccio.getPes_mol()*(double)reaccio.getCoe_rea());
                    }
                    if(ven.equals("Peso")){
                        cantiti = cantiti/200;
                        ven = " kg de " + ven.toLowerCase();
                    } else {
                        cantiti = cantiti/200;
                        ven = "% de " + ven.toLowerCase();
                    }
                    cantiti = Math.floor(cantiti * 100) / 100;
                    %><br><i><i class="fa fa-plus"></i><%=cantiti%><%=ven%>. </i>  
                    </font><br><br><b><font size = 5>Aplicar a</font></b>                    
                    <table border = 0 align = center>
                        <%  ArrayList<String> personajesNombre =  consulta.consultarArrayString("Select nom_per from mpersonaje order by id_per", "nom_per");
                        ArrayList<String> personajesApellido =  consulta.consultarArrayString("Select ape_per from mpersonaje order by id_per", "ape_per");%>
                        <tr>
                            <td>
                                <table>
                                    <%for(int i = 0; i<personajesNombre.size()/2; i++){
                                        String nom = personajesNombre.get(i);   
                                        String ape = personajesApellido.get(i); 
                                        %>
                                        <tr><td> 

                                                <script type="text/javascript">
                                                    function mandar<%=nom%>(){
                                                        document.form<%=nom%>.submit();
                                                    }                                    
                                                </script>
                                                <form name="form<%=nom%>" action="ServletAgregarIncremento" method="post">
                                                    <input type="hidden" name="nom" value = "<%=nom%>">    
                                                    <input type="hidden" name="id_ven" value = "<%=id_ven%>">
                                                    <input type="hidden" name="incre" value = "<%=cantiti%>">                                            
                                                </form> 
                                                    <a onclick="mandar<%=nom%>()" class="poin"><%=nom%> <%=ape%></a>
                                            </td></tr><%
                                    }
                                    %>    
                                </table>
                            </td>
                            <td>
                                <table>
                                    <%for(int i = personajesNombre.size()/2; i<personajesNombre.size(); i++){
                                        String nom = personajesNombre.get(i);   
                                        String ape = personajesApellido.get(i); 
                                        %>
                                        <tr><td> 
                                            <script type="text/javascript">
                                                function mandar<%=nom%>(){
                                                    document.form<%=nom%>.submit();
                                                }                                    
                                            </script>
                                            <form name="form<%=nom%>" action="ServletAgregarIncremento" method="post">
                                                <input type="hidden" name="nom" value = "<%=nom%>">    
                                                <input type="hidden" name="id_ven" value = "<%=id_ven%>">
                                                <input type="hidden" name="incre" value = "<%=cantiti%>">
                                            </form> 
                                                <a onclick="mandar<%=nom%>()" class="poin"><%=nom%> <%=ape%></a>
                                        </td></tr><%
                                    }
                                    %>    
                                </table>
                            </td>
                        </tr>                        
                    </table>
                </center>
            </div>
        </div>
     
    </section>

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
               
                    <img src="img/magnostadt.png" width="150" alt="Logo"> 
					&copy; 2016 <a target="_blank" >Magnostadt S.R.E.</a> All Rights Reserved.
		
            </div>
        </div>
    </footer>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/Ini.js"></script>
</body>
</html>