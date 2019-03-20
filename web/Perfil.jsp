<%-- 
    Document   : Perfil
    Created on : 15/05/2016, 03:47:44 PM
    
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Control.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nombre;
    String pass;
    String mail;
    Conexion consulta;
    int priv;
%>
<%
    nombre = (String)session.getAttribute("nombre");
    consulta = new Conexion();
    consulta.conectar();
    priv = consulta.consultarInt("select id_tip from musuario where nic_usu = '" + nombre +"';", "id_tip");
    mail = consulta.consultarString("select mail_usu from musuario where nic_usu = '" + nombre +"';", "mail_usu");
    pass = consulta.consultarString("select pas_usu from musuario where nic_usu = '" + nombre +"';", "pas_usu");
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
    <title>Perfil | Mohnblumen</title>
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
                                <li class="active"><a href="Perfil.jsp"> Mi perfil</a></li>
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
                <center><table border=0>
                <br>
                
                <tr>                    
                    <td> 
                        <form name ="Foro">
                            <ul class="nav navbar-nav1">
                                <%if(priv == 1){%>
                                <li style="color:#e0e2e4;" onclick="HelpAd()"><a href="#top"><b>Ayuda <i class="fa fa-file-text"></i></b></a></li>
                                 <%}else{%>
                                 <li style="color:#e0e2e4;" onclick="Help()"><a href="#top"><b>Ayuda <i class="fa fa-file-text"></i></b></a></li>
                                <%}%>
                            </ul>
                        </form>
                    </td>
                    <td>
                        <font size = 5><b>¡Hola <%=nombre%>!</b></font>
                    </td>
                    <td>
                        <table>
                            <tr><td><a href="#top" onclick="edit('<%=mail%>','<%=pass%>')"><b>Editar Perfil</b></a></td>
                                <td><a href="#top" onclick="Delete()"><b>Eliminar cuenta</b></a></td></tr>
                        <%if(priv == 1){%>
                            <tr><td><a href="#top" onclick="addAdm(),weba()"><b>Agregar usuario</b></a></td>
                                <td><a href="#top" onclick="EliminarUsuario()"><b>Eliminar usuario</b></a></td></tr>
                            <tr><td><a href="#top" onclick="window.location='ConsultaUsuario.jsp'"><b>Consultar usuarios</b></a></td>
                                <td><a href="#top" onclick="ConsultarUsuario()"><b>Consulta especifica</b></a></td></tr>
                        <%}%>
                        </table>
                    </td>
                    
                </tr>
                <tr>
                    <td><b><font size = 4>Tu inventario <i class="fa fa-suitcase"></i></font></b></td>
                    <td><b><font size = 4>Tus estadísticas <i class="fa fa-bar-chart-o"></i></font></b></td>
                    <td><b><font size = 4>Tus estadísticas dinámicas <i class="fa fa-bar-chart-o"></i></font></b></td>
                </tr>
                <tr>
                    <td rowspan = 13>
                        <table border = 0 align = center>
                            
                            <tr>
                                <td>
                                    <b>Molécula</b>
                                </td>
                                <td>
                                    <b>Cantidad</b>
                                </td>
                            </tr>
                             <%
                                ArrayList<String> molecula = new ArrayList();
                                ArrayList<Double> cantidad = new ArrayList();
                                String mol = "";
                                double can = 0;
                                molecula = consulta.consultarArrayString("select nom_mol from musuario natural join dinventario natural join cmolecula where nic_usu = '" + nombre +"' order by nom_mol;", "nom_mol");
                                cantidad = consulta.consultarArrayDouble("select can_mol from musuario natural join dinventario natural join cmolecula where nic_usu = '" + nombre +"' order by nom_mol;", "can_mol");
                                for(int i=0; i<molecula.size(); i++){
                                    mol = molecula.get(i);
                                    can = cantidad.get(i);
                                        %>
                                        <tr>
                                            <td><%=mol%></td>
                                            <td><%=can%> mg</td>
                                        </tr>
                                    <%
                                }
                             %>
                        </table></td>
                    <td>
                        <table border = 0 align = center>
                        <%
                            ArrayList<String> estadistica = new ArrayList();
                            ArrayList<Double> valor = new ArrayList();
                            String est = "";
                            int val = 0;
                            estadistica = consulta.consultarArrayString("select nom_tie from cestadistica natural join ctipest natural join musuario where nic_usu = '"+ nombre +"' order by nom_tie;", "nom_tie");
                            valor = consulta.consultarArrayDouble("select val_est from cestadistica natural join ctipest natural join musuario where nic_usu = '"+ nombre +"' order by nom_tie;", "val_est");
                            for(int i=0; i<estadistica.size(); i++){
                                est = estadistica.get(i);
                                val = (int)valor.get(i).doubleValue();
                                    %>
                                    <tr>
                                        <td><%=est%></td>
                                        <td><%=val%></td>
                                    </tr>
                                <%
                            }
                         %>
                        </table>
                        
                    </td>
                    <td>
                        <table border = 0 align = center>
                        <%  int idPer = consulta.consultarInt("select id_per from musuario natural join mpartida natural join mpersonaje natural join cmodo where nic_usu = '" + nombre +"' and nom_mod = 'Historia' order by id_par desc;", "id_per");
                            String nombrePersonaje;
                            nombrePersonaje = consulta.consultarString("select nom_per from musuario natural join mpartida natural join mpersonaje natural join cmodo where nic_usu = '" + nombre +"' and nom_mod = 'Historia' order by id_par desc;", "nom_per");                            
                            if(!nombrePersonaje.equals("")){
                                nombrePersonaje = nombrePersonaje + " " + consulta.consultarString("select ape_per from musuario natural join mpartida natural join mpersonaje natural join cmodo where nic_usu = '" + nombre +"' and nom_mod = 'Historia' order by id_par desc;", "ape_per");
                            %>
                            <tr>
                                <td colspan = 3>
                                    <b><%=nombrePersonaje%></b>
                                </td>
                            </tr>
                            <%
                                ArrayList<String> nomHab = new ArrayList();
                                ArrayList<Double> valEsb = new ArrayList();
                                ArrayList<Double> valEsd = new ArrayList();
                                nomHab = consulta.consultarArrayString("select nom_hab from musuario natural join destdina natural join chabilidad natural join mpersonaje natural join destbase where nic_usu = '" + nombre +"' and id_per = " + idPer +";", "nom_hab");
                                valEsb = consulta.consultarArrayDouble("select val_esb from musuario natural join destdina natural join chabilidad natural join mpersonaje natural join destbase where nic_usu = '" + nombre +"' and id_per = " + idPer +";", "val_esb");
                                valEsd = consulta.consultarArrayDouble("select val_esd from musuario natural join destdina natural join chabilidad natural join mpersonaje natural join destbase where nic_usu = '" + nombre +"' and id_per = " + idPer +";", "val_esd");
                                for(int i = 0; i<nomHab.size(); i++){
                                    String nomhabil = nomHab.get(i);
                                    double valEstab = valEsb.get(i);
                                    double valEstad = valEsd.get(i);
                                    String unidad = "%";
                                    if(nomhabil.equals("Altura") || nomhabil.equals("Medida del brazo")){
                                        unidad = "m.";
                                    } else {
                                        if(nomhabil.equals("Peso")){
                                            unidad = "Kg.";
                                        } 
                                    }
                                    %>
                                    <tr>
                                    <td><%=nomhabil%></td>
                                    <td><%=valEstab%> <%=unidad%></td>
                                    <td><%=valEstad%> <%=unidad%></td>
                                    </tr>
                                    <%
                                }
                         } else {%>
                         <br><br>No hay estadisticas para mostrar.
                         <%
                         }
                         %>
                        </table>
                    </td>
                </tr>
        </table>
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