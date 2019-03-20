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
    <%if(nombre.equals("") || priv == 2){
        %><script type="text/javascript">
            window.location="index.jsp";
        </script><%
    }%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Usuarios | Mohnblumen</title>
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
                <center><table border=0>
                <br>
                
                <tr>
                    <td colspan = 3 >
                        <font size = 5><b>Usuarios</b></font>
                    </td>                    
                </tr>
                <tr>
                    <td><b><font size = 4>Nickname</font></b></td>
                    <td><b><font size = 4>Nombre Real</font></b></td>
                    <td><b><font size = 4>Tipo de usuario</font></b></td>
                </tr>
                        <%
                            ArrayList<String> Nicks = new ArrayList();
                            Nicks = consulta.consultarArrayString("select nic_usu from musuario order by id_tip", "nic_usu");
                            ArrayList<String> Noms = new ArrayList();
                            Noms = consulta.consultarArrayString("select nom_usu from musuario order by id_tip", "nom_usu");
                            ArrayList<String> Apps = new ArrayList();
                            Apps = consulta.consultarArrayString("select app_usu from musuario order by id_tip", "app_usu");
                            ArrayList<String> Apms = new ArrayList();
                            Apms = consulta.consultarArrayString("select apm_usu from musuario order by id_tip", "apm_usu");
                            ArrayList<Integer> Privs = new ArrayList();
                            Privs = consulta.consultarArrayInt("select id_tip from musuario order by id_tip", "id_tip");
                            for(int i = 0; i<Nicks.size(); i++){
                                String Ni = Nicks.get(i);
                                String Nis = Ni.replace(" ", "");
                                String No = Noms.get(i);
                                String Ap = Apps.get(i);
                                String Am = Apms.get(i);
                                int privi = Privs.get(i);
                                
                                %>
                                <tr><td> 
                                             
                                        <script type="text/javascript">
                                            function mandar<%=Nis%>(){
                                                document.form<%=Nis%>.submit();
                                            }                                    
                                        </script>
                                        <form name="form<%=Nis%>" action="ServletConsUsu" method="post">
                                            <input type="hidden" name="nic" value = "<%=Ni%>">                                            
                                        </form> 
                                            <a onclick="mandar<%=Nis%>()" class="poin"><%=Ni%></a></td><td><%=No%> <%=Ap%> <%=Am%></td>
                                    <%
                                        if(privi == 1){
                                            %><td>Administrador</td><%
                                        } else {
                                            %><td>Estandar</td><%
                                        }
                                    %>
                                    </tr><%
                            }
                        %>
                        <tr><td colspan = 3><a href="Perfil.jsp"><b>Volver</b></a> </td></tr>
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