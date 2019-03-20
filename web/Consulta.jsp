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
    String name;
    String app;
    String apm;
    String nac;
    int genero;
    String pass;
    String mail;
    String Curp;
    Conexion consulta;
    String deporte;
    int priv;
    int privL;
    String nic;
%>
<%
    nombre = (String)session.getAttribute("nombre");
    nic = (String)session.getAttribute("Consulta");
    consulta = new Conexion();
    consulta.conectar();
    
    priv = consulta.consultarInt("select id_tip from musuario where nic_usu = '" + nic +"';", "id_tip");
    privL = consulta.consultarInt("select id_tip from musuario where nic_usu = '" + nombre +"';", "id_tip");
    mail = consulta.consultarString("select mail_usu from musuario where nic_usu = '" + nic +"';", "mail_usu");
    pass = consulta.consultarString("select pas_usu from musuario where nic_usu = '" + nic +"';", "pas_usu");
    name = consulta.consultarString("select nom_usu from musuario where nic_usu = '" + nic +"';", "nom_usu");
    app = consulta.consultarString("select app_usu from musuario where nic_usu = '" + nic +"';", "app_usu");
    apm = consulta.consultarString("select apm_usu from musuario where nic_usu = '" + nic +"';", "apm_usu");
    nac = consulta.consultarString("select nac_usu from musuario where nic_usu = '" + nic +"';", "nac_usu");
    genero = consulta.consultarInt("select id_gen from musuario where nic_usu = '" + nic +"';", "id_gen");
    Curp = consulta.consultarString("select curp_usu from musuario where nic_usu = '" + nic +"';", "curp_usu");
    deporte = consulta.consultarString("select nom_dep from musuario natural join cdeporte where nic_usu = '" + nic +"';", "nom_dep");    
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%if(nombre.equals("") || privL == 2){
        %><script type="text/javascript">
            window.location="index.jsp";
        </script><%
    }%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Consulta | Mohnblumen</title>
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
                    <td colspan = 3>
                        <font size = 5><b>Información de <%=nic%></b></font>
                    </td>                  
                </tr>
                <tr>
                    <td colspan = 4>
                        <table border = 0>
                            <tr>
                                <td><b>Nombre</font></b></td>
                                <td><b>Apellido Paterno</b></td>
                                <td><b>Apellido Materno</b></td>
                                <td><b>Género</b></td>
                                <td><b>Nacimiento</b></td>                                
                            </tr>
                            <tr>
                                <td><%=name%></td>
                                <td><%=app%></td>
                                <td><%=apm%></td>
                                <td><%
                                    if(genero == 1){
                                        %>Hombre<%
                                    } else {
                                        %>Mujer<%
                                    }
                                    %></td>
                                <td><%=nac%></td>                                
                            </tr>
                            <tr><td><br></td></tr>
                            <tr>                                
                                <td><b>Mail</b></td>
                                <td><b>CURP</b></td>
                                <td><b>Deporte</b></td>
                                <td><b>Nickname</b></td>                               
                                <td><b>Privilegios</b></td>
                                
                            </tr>
                            <tr>
                                <td><%=mail%></td>
                                <td><%=Curp%></td>
                                <td><%=deporte%></td>
                                <td><%=nic%></td>
                                <td><%
                                    if(priv == 1){
                                        %>Administrador<%
                                    } else {
                                        %>Estandar<%
                                    }
                                    %></td>
                            </tr>
                            <tr><td><br></td></tr>
                        </table>
                    </td>                    
                </tr>
                <td
                    <td><b><font size = 4>Inventario</font></b></td>
                    <td><b><font size = 4>Estadisticas</font></b></td>
                    <td><b><font size = 4>Estadisticas dinamicas</font></b></td>
                </tr>
                <tr>
                    <td>
                        <table border = 0 align = center>
                            
                            <tr>
                                <td>
                                    <b>Molecula</b>
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
                                molecula = consulta.consultarArrayString("select nom_mol from musuario natural join dinventario natural join cmolecula where nic_usu = '" + nic +"' order by nom_mol;", "nom_mol");
                                cantidad = consulta.consultarArrayDouble("select can_mol from musuario natural join dinventario natural join cmolecula where nic_usu = '" + nic +"' order by nom_mol;", "can_mol");
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
                            estadistica = consulta.consultarArrayString("select nom_tie from cestadistica natural join ctipest natural join musuario where nic_usu = '"+ nic +"' order by nom_tie;", "nom_tie");
                            valor = consulta.consultarArrayDouble("select val_est from cestadistica natural join ctipest natural join musuario where nic_usu = '"+ nic +"' order by nom_tie;", "val_est");
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
                        <%  int idPer = consulta.consultarInt("select id_per from musuario natural join mpartida natural join mpersonaje natural join cmodo where nic_usu = '" + nic +"' and nom_mod = 'Historia' order by id_par desc;", "id_per");
                            String nombrePersonaje;
                            nombrePersonaje = consulta.consultarString("select nom_per from musuario natural join mpartida natural join mpersonaje natural join cmodo where nic_usu = '" + nic +"' and nom_mod = 'Historia' order by id_par desc;", "nom_per");                            
                            if(!nombrePersonaje.equals("")){
                                nombrePersonaje = nombrePersonaje + " " + consulta.consultarString("select ape_per from musuario natural join mpartida natural join mpersonaje natural join cmodo where nic_usu = '" + nic +"' and nom_mod = 'Historia' order by id_par desc;", "ape_per");
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
                                nomHab = consulta.consultarArrayString("select nom_hab from musuario natural join destdina natural join chabilidad natural join mpersonaje natural join destbase where nic_usu = '" + nic +"' and id_per = " + idPer +";", "nom_hab");
                                valEsb = consulta.consultarArrayDouble("select val_esb from musuario natural join destdina natural join chabilidad natural join mpersonaje natural join destbase where nic_usu = '" + nic +"' and id_per = " + idPer +";", "val_esb");
                                valEsd = consulta.consultarArrayDouble("select val_esd from musuario natural join destdina natural join chabilidad natural join mpersonaje natural join destbase where nic_usu = '" + nic +"' and id_per = " + idPer +";", "val_esd");
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
                 <tr><td colspan = 3><a href="ConsultaUsuario.jsp"><b>Volver</b></a> </td></tr>
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