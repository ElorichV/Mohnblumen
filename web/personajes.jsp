<%-- 
    Document   : personajes
    Created on : 15/05/2016, 10:29:45 PM
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
    <title>Personajes | Monhblumen</title>
	
	<!-- core CSS -->
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

<body ondragstart="return false" onselectstart="return false" oncontextmenu="return false">
    
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
				
                <div class="collapse navbar-collapse navbar-right ">
                    <ul class="nav navbar-nav">
                                <li><a href="index.jsp">Inicio</a></li>
                        <li class="active"><a href="personajes.jsp">Personajes</a></li>
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
	
	<section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <br>
                <h2>Personajes</h2>
                <p class="lead"> </p>
            </div>

            <div class="row">
			
			
                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/perkahf5.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Neah Campbello</h3>
                            <p>País de origen: Reino Unido
                            <br>Deporte: Karate</p>
                            <p align="justify">Nacido en el seno de una familia rica de Londres entrenó Karate desde los 10 años, dedicandose por completo a éste arte marcial, logrando superar a su maestro.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.77 m</li>
                            <li>Fuerza: 50.92%</li>
                            <li>Aguante: 65.61%</li>
                            <li>Velocidad: 30%</li>
                            <li>Peso: 75.6 kg</li>
                            </ul>
                	</div>
                    </div>
                </div>
				
				<div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/karm.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Agaraki Tatsuo</h3>
                            <p>País de origen: Filipinas
                            <br>Deporte: Karate</p>
                            <p>Tras la prematura muerte de sus padres se mudó a la casa de sus abuelos, en donde, su abuelo le enseñó ésta arte ancestral que ha pasado de generación en generación.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.63 m</li>
                            <li>Fuerza: 58.44%</li>
                            <li>Aguante: 43.23%</li>
                            <li>Velocidad: 20%</li>
                            <li>Peso: 61 kg</li>
                            </ul>
		        </div>  
                    </div>
                </div>
			
				<div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/boxh.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Joey "El ruedas" Rico</h3>
                            <p>País de origen: México
                            <br>Deporte: Box</p>
                            <p>Nacido en el barrio de Tepito, de una familia fanática de la lucha libre comenzó a practicar éste deporte pero encontró su verdadera pasión en el box y en contra de los deseos de su familia, decidió dedidar su tiempo a éste deporte.</p>			
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.78 m</li>
                            <li>Fuerza: 54.25%</li>
                            <li>Aguante: 56.71%</li>
                            <li>Velocidad: 25%</li>
                            <li>Peso: 69 kg</li>
                            </ul>
                        </div>
                    </div>
                </div>
				
				<div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/boxm.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Miranda Walker</h3>
                            <p>País de origen: Reino Unido
                            <br>Deporte: Box</p>
                            <p>Nacida y educada en Glasgow para ser una dama de sociedad en la corte actual, optó por los guantes tras una breve demostración. Apenas comenzó a practicar éste deporte hace un año, pero haciendo uso de su destreza es capaz de enfrentar a cualquier adversario.</p>
                            <h3>Estadísticas</h3>
			    <p><ul>
                            <li>Altura: 1.30 m</li>
                            <li>Fuerza: 8.89%</li>
                            <li>Aguante: 87.72%</li>
                            <li>Velocidad: 45%</li>
                            <li>Peso: 40 kg</li>
                            </ul>
			</div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/kunm.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Li Chang</h3>
                            <p>País de origen: China
                            <br>Deporte: Kung-Fu</p>
                            <p>Su padre al ser la cabeza de familia de un dojo, la entrenó desde temprana edad en el arte de kung-fu. Destinada a ser la sucesora de su padre, se ha visto obligada a entrenar arduamente para mostrarse digna de su futuro.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.71 m</li>
                            <li>Fuerza: 35.57%</li>
                            <li>Aguante: 80.71%</li>
                            <li>Velocidad: 35%</li>
                            <li>Peso: 67 kg</li>
                            </ul>
						
			</div>
                    </div>
                </div>
				
				<div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/kunh.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Seung Mirazaki</h3>
                            <p>País de origen: Corea del Norte
                            <br>Deporte: Kung-Fu</p>
                            <p>Al recibir instrucciones básicas de Kung-Fu en la escuela elemental, Seung se quedó prendado de esta arte marcial, dedicándose enteramente su servicio militar al entrenamiento, superando a sus instructores y abriéndose paso en el ejército gracias a sus habilidades.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.74 m</li>
                            <li>Fuerza: 39.04%</li>
                            <li>Aguante: 82.65%</li>
                            <li>Velocidad: 40%</li>
                            <li>Peso: 78 kg</li>
                            </ul>
            		</div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/taeh.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Joseph Pierre</h3>
                            <p>País de origen: Francia
                            <br>Deporte: Taekwondo</p>
                            <p>Fanático de la cultura asiática y las películas de culto se obsesionó con el taekwondo llegando a practicarlo a tiempo completo. Sin lograr destacarse demasiado, nunca pierde la esperanza de mejorar y volverse un doble de riesgo en las películas que tanto ama.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.56 m</li>
                            <li>Fuerza: 18.2%</li>
                            <li>Aguante: 80.33%</li>
                            <li>Velocidad: 35%</li>
                            <li>Peso: 50 kg</li>
                            </ul>
			</div>
                    </div>
                </div>
				
				<div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/taem.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Yumiko Aikawa</h3>
                            <p>País de origen: Japón
                            <br>Deporte: Taekwondo</p>
                            <p>Al ser la hija menor de un exitoso programador de videojuegos, y teniendo un hermano mayor, Yumiko se ha visto desplazada a segundo plano debido a sus bajas calificaciones y dificultades para relacionarse en la escuela. Como consecuencia se refugio en el taekwondo.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 1.63 m</li>
                            <li>Fuerza: 48.62%</li>
                            <li>Aguante: 29.77%</li>
                            <li>Velocidad: 45%</li>
                            <li>Peso: 59 kg</li>
                            </ul>
                        </div>
                    </div>
                </div>				

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/capm.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Gathoni Esiankiki</h3>
                            <p>País de origen: Kenia
                            <br>Deporte: Capoeira</p>
                            <p>Debido a la precaria condición de su país y los limitados recursos de su familia, Gathoni se vió obligada a robar en las calles de Kenia para alimentar a su numerosa familia; aprendiendo la Capoeira en las calles de manos de sus amigos.</p>
                            <h3>Estadísticas</h3>
                            <ul>
                            <li>Altura: 1.75 m</li>
                            <li>Fuerza: 23.5%</li>
                            <li>Aguante: 27.80%</li>
                            <li>Velocidad: 50%</li>
                            <li>Peso: 69 kg</li>
                            </ul>			
			</div>
                    </div>
                </div>
                            
				<div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="img/PERSONAJES/caph.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Zareb Emeka</h3>
                            <p>País de origen: Sudáfrica
                            <br>Deporte: Capoeira</p>
                            <p>Aficionado al rugby, tras una lesión en el tobillo fue incapaz de continuar practicando su deporte favorito, encontrando en la capoeira el reemplazo adecuado para sus sueños y habilidades.</p>
                            <h3>Estadísticas</h3>
                            <p><ul>
                            <li>Altura: 2.30 m</li>
                            <li>Fuerza: 96.20%</li>
                            <li>Aguante: 22.96%</li>
                            <li>Velocidad: 25%</li>
                            <li>Peso: 106 kg</li>
                            </ul>
			</div>
                    </div>
                </div>
																	
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->

    	
	<section id="portfolio">
        <div class="container">
            <div class="center">
               <h2>Escenarios</h2>
               <p class="lead"></p>
            </div>
        
            <div class="row">
                <div class="portfolio-items">
                    <div class="portfolio-item apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="img/escenarios/boxes.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="">Box</a></h3>
                                    
                                    <a class="preview" href="img/escenarios/boxes.png" rel="prettyPhoto"><i class="fa fa-eye"></i> Ver</a>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item joomla bootstrap col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="img/escenarios/capoes.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="">Capoeira</a></h3>
                                    
                                    <a class="preview" href="img/escenarios/capoes.png" rel="prettyPhoto"><i class="fa fa-eye"></i> Ver</a>
                                </div> 
                            </div>
                        </div>          
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item bootstrap wordpress col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="img/escenarios/karaes.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="">Karate</a></h3>
                                    
                                    <a class="preview" href="img/escenarios/karaes.png" rel="prettyPhoto"><i class="fa fa-eye"></i> Ver</a>
                                </div> 
                            </div>
                        </div>        
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item joomla wordpress apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="img/escenarios/kungesce.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="">Kung Fu</a></h3>
                                    
                                    <a class="preview" href="img/escenarios/kungesce.png" rel="prettyPhoto"><i class="fa fa-eye"></i> Ver</a>
                                </div> 
                            </div>
                        </div>           
                    </div><!--/.portfolio-item-->
                    <div class="portfolio-item joomla html bootstrap col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="img/escenarios/taekes.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="">Taekwondo</a></h3>
                                    
                                    <a class="preview" href="img/escenarios/taekes.png" rel="prettyPhoto"><i class="fa fa-eye"></i> Ver</a>
                                </div> 
                            </div>
                        </div>      
                    </div><!--/.portfolio-item-->
                                   
                </div>
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
    <script type="text/javascript">
        $('.carousel').carousel();
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/Ini.js"></script>
    <script src="js/Ini.js"></script>
</body>
</html>