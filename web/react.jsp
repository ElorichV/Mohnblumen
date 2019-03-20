<%-- 
    Document   : react
    Created on : 15/05/2016, 10:31:03 PM
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nombre = "";
%>
<%
    try{
    nombre = (String)session.getAttribute("nombre"); 
    if(nombre.equals(null)){
        nombre = "";
    }
    } catch (Exception e){
        nombre = "";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Reactivos | Mohnblumen</title>
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
                        %><li class = "active"><a href="<%=react%>">Reactivos</a></li>
                        <%
                            if(!nombre.equals("")){%>
                                <li><a href="Perfil.jsp"> Mi perfil</a></li>
                                
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
        <br>
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="center wow fadeInDown">
        <center><table border=0>

            <th><center>Reactivo</th>
            <center><th><center>Nombre
            <center><th><center>Tipo de reactivo
            <center><th><center>Icono

                <tr>
                    <center><td>NaOH</td>
                    <td>Hidróxido de Sodio</td>
                    <td>Hidróxido
                    <td> <img src="img/Po4.png" height="50"> 
                </tr>
                <tr>
                    <td>HCl
                    <td>Ácido Clorhídrico
                    <td>Hidruro
                    <td><img src="img/Po11.png" height="50">    
                </tr>
                <tr>
                    <td>NaCl
                    <td>Cloruro de Sodio
                    <td>Sal(Haloidea)
                    <td><img src="img/Po2.png" height="50">
                </tr>
                <tr>
                    <td>H<sub>2</sub>O 
                    <td>Agua
                    <td>Único
                    <td><img src="img/Po8.png" height="50">
                </tr>
                <tr>
                    <td>Cl<sub>2</sub>
                    <td>Cloro(Diatómico)
                    <td>Molécula
                    <td><img src="img/Po10.png" height="50">
                </tr>
                <tr>
                    <td>CO<sub>2</sub>
                    <td>Dióxido de Carbono
                    <td>Anhídrido
                    <td><img src="img/Po7.png" height="50">
                </tr>
                <tr>
                    <td>C<sub>6</sub>H<sub>12</sub>O<sub>6</sub>
                    <td>Glucosa
                    <td>Monosacárido
                    <td><img src="img/Po6.png" height="50">
                </tr>
                <tr>
                    <td>O<sub>2</sub>
                    <td>Oxígeno (Diatómico) 
                    <td>Molécula</td>
                    <td><img src="img/Po9.png" height="50">    
                </tr>
                    </table>
        
            </div></div>
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