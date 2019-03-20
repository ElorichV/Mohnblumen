<%-- 
    Document   : index
    Created on : 15/05/2016, 10:23:09 PM
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
    <title>Home | Mohnblumen</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="js/Ini.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="img/iICO/icon16.ico">
    <link rel="shortcut icon" type="image/x-icon" sizes="144x144" href="img/ICO/icon144.png">
    <link rel="shortcut icon" type="image/x-icon" sizes="114x114" href="img/ICO/icon114.png">
    <link rel="shortcut icon" type="image/x-icon" sizes="72x72" href="img/ICO/icon72.png">
    <link rel="shortcut icon" type="image/x-icon" href="img/ICO/icon57.png">
</head><!--/head-->

<body class="homepage" ondragstart="return false" onselectstart="return false" oncontextmenu="return false">
          
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
                                <li class="active"><a href="index.jsp">Inicio</a></li>
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
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
               
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(img/Todf.png)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                   
                                </div>
                            </div>                            

                        </div>
                    </div>
                </div><!--/.item-->
                
                <div class="item" style="background-image: url(img/bosque1.png)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->
                
                <div class="item" style="background-image: url(img/promo1.png)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
               
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section><!--/#main-slider-->
    
         
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="center wow fadeInDown">
                <h2>Historia</h2>
                <p class="lead">Tanto en el mundo de lo humano como lo irreal, existen ciertos seres que se arremolinan en los rincones del espacio que les permite las inconsistencias de los planos. Entre los millares de criaturas cuya existencia desconocemos casi del todo, se encuentran los egrégores; entes cuya existencia es resultado del pensamiento y sentir colectivo de los seres humanos. En algunos casos su vida es tan efímera como una exhalación, pero a veces su presencia puede extenderse más allá de los siglos, alimentándose de las emociones más fuertes, sobreviviendo en las sombras de los planos. Han contemplado la evolución de la humanidad, han crecido a la par con ellos, ganando fuerza y conocimientos… esperando una oportunidad para surgir.
	 </p>
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
        
    </footer><!--/#footer-->

    
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/Ini.js"></script>
</body>
</html>