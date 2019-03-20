<%-- 
    Document   : hist
    Created on : 15/05/2016, 10:25:26 PM
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
    <title>Historia de las Artes Marciales | Mohnblumen</title>
    
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
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                         <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="personajes.jsp">Personajes</a></li>
                        <li class="active"><a href="hist.jsp">
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
    
    <section id="content">
        <br>
        <div class="container">
            <center><div class="row">
                <div class="col-xs-12 col-sm-8 wow fadeInDown">
                    <div class="tab-wrap" > 
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class=""><a href="#tab1" data-toggle="tab" class="analistic-01">Boxeo</a></li>
                                    <li class="active"><a href="#tab2" data-toggle="tab" class="analistic-02">Capoeira</a></li>
                                    <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">Karate</a></li>
                                    <li class=""><a href="#tab4" data-toggle="tab" class="tehnical">Kung fu</a></li>
                                    <li class=""><a href="#tab5" data-toggle="tab" class="tehnical">Taekwondo</a></li>
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade" id="tab1">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="img/Box.jpg" width="300">
                                            </div>
                                            <div class="media-body">
                                                <h2 id="titespbox"><i>En el deporte del boxeo los golpes mandan</i></h2>
                                                <br>
                                                <p align="justify" id="español" >Es un deporte en el que dos personas  combaten entre sí, golpeándose únicamente con sus puños. Pero los golpes no se lanzan sin sentido, ni se dirigen a cualquier parte del cuerpo; el golpeo y el desarrollo del combate tienen reglas muy precisas con la finalidad de que el combate se desarrolle limpiamente.
                                                     El boxeo es un deporte que requiere de fuerza e inteligencia, por ello los pugilistas deben tener una condición física excelente y una preparación mental sólida para combatir en cada asalto de la mejor forma.
                                                     <br>
                                                     Desde épocas remotas, los hombres empleaban los puños para defender sus propiedades, o  para decidir quién era el más fuerte y por lo tanto el jefe del grupo. En tiempos del Imperio Romano, como parte del espectáculo de gladiadores, los boxeadores llevaban la imagen cestus, que es un protector metálico para las manos cubierto de clavos con el que mutilaban e incluso mataban a sus rivales. En 1681 se ubica el primer registro de un combate de boxeo en Inglaterra, organizado por el duque de Albermarle entre su mayordomo y su carnicero. En el siglo XVIII los combates resurgieron en Londres, los boxeadores combatían por dinero y sin guantes, mientras los espectadores hacían sus apuestas. No fue sino hasta 1743 cuando John Broughton, campeón de los pesos pesados, formuló un conjunto de reglas en el que  se recogían  algunas  prácticas y se eliminaban otras, como golpear al oponente cuando estaba caído o jalar los cabellos. Estas reglas prevalecieron con sus pequeñas modificaciones, hasta que en 1865 el marqués de Queensberry redactó las reglas que contribuyeron a mejorar la imagen del boxeo, cambiando su fama de pleito salvaje, por la de un combate lleno de arte en sus aspectos de ataque y defensa. Entre otras cosas, estas reglas prohibían peleas con los puños desnudos, la lucha libre, abrazar y las peleas sin límite de tiempo. Las reglas de Queensberry han permanecido hasta la actualidad como un código del boxeo que ha permitido el claro surgimiento de dos ramas de boxeo, el profesional y el amateur. En 1946 se formó la Asociación Internacional de Boxeo Amateur (AIBA) y es el organismo que rige esta división a escala mundial.
                                                </p>
                                                <h2 id="titengbox" style="display: none;"><i>In the sport of boxing the blows give the orders</i></h2>
                                                <br>
                                                <p align="justify" id="english" style="display: none;">It´s a sport where two people fight each other, hitting only with their blows. But blows are not launch without sense, they do not even go to any part of the body, the hitting and the development of the combat has very precise rules with the finality that the combat develops cleanly. <br>
                                                    The boxing is a sport that needs force and intelligence, for that the boxers, need to have and excelent physical condition and a solid mental preparation to fight in every round as best as possible.<br>
                                               Since ancient epochs, human used their cuffs to defend their properties, or to decide who was the strongest and the boss of the group. In times of Roman Empire, as part of the gladiators show, the boxers were taking the cestus image, that is a metallic protector for the hands cutlery of nails with the one that they mutilate and even killed their rivals. In 1681 it´s located the first register of a boxing fight in England, organized for the duke of Albermarle between his butler and his butcher. On the century XVIII , combats re-arose in London, the boxers fighted for money and without gloves, while the spectators were doing his bets.<br>
                                               Until 1743 when John Broughton, champion of the Heavy Weight, made a set of rules where some practices were gathered, and others were deleted, like hitting the opponent when it was fallen or pulling the hair. This rules stayed with little modifications, until  1865, when the marquess Queensberry wrote rules that helped to improve the image of boxing, changing it´s reputation of wild lawsuit, to  a combat  full of art on the aspects of attack and defense. Among other things, this rules prohibited fight with naked fists, the wrestling, hugging and fights without limit of time. Queensberry´s rules have remained up to the current importance as a code of boxing that has allowed the emergence of two branches of boxing, the professional and the amateur. In 1946  the International Association of Boxing Amateur (AIBA) was formed, and is the organism that  governs this division on a worldwide scale.<br>
                                                </p>    
                                            </div>
                                        </div>
                                    </div>

                                     <div class="tab-pane fade active in" id="tab2">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="img/Capoi.jpg" width="300">
                                            </div>
                                            <div class="media-body">
                                                <h2 id="titespcap"><i>Capoeira, amor y defensa. Un arte de Libertad Brasileña.</i></h2>
                                                <br>
                                                <p align="justify" id="españolcap"> La capoeira es una de las artes marciales con más crecimiento está experimentando en los últimos años. Su utilidad como defensa personal unida a su indudable atractivo visual hace que cada vez más jóvenes muestran interés por practicar este deporte<br>
                                                     Fue desarrollado en Brasil por descendientes africanos con influencias indígenas, probablemente a principios del siglo XVI. Es conocido por sus rápidos y complejos movimientos, que utilizan los brazos y las piernas para ejecutar maniobras de gran agilidad en forma de patadas, fintas y derribos, entre otros. La capoeira como estilo de lucha incorpora movimientos bajos y barridos, mientras que en el ámbito deportivo se hace más énfasis en las acrobacias y las demostraciones ritualizadas de habilidad.<br>
                                                     Existen varias teorías en relación al origen de la palabra capoeira. Una de ellas viene establecida por la lengua tupí-guaraní donde, kapuêra resulta en la secuencia de las palabras capuíra, capoêra y capoeira. Según algunos estudios, la palabra capoeira designaría un tipo especial de jaulas, usadas en el transporte de aves (capón), que eran conducidas por esclavos a los mercados. El término se extendería de las jaulas a los esclavos, traídos de Angola, en África. Según los defensores de esa hipótesis, mientras aguardaban la llegada de los comerciantes, los esclavos se divertían en la práctica de su arte-lucha, pasando también a denominarse igualmente bajo ese término (capoeira). Llegó a extenderse también al claro de un bosque donde se practicaba este deporte y luego a una población cercana.<br>
                                                     En la actualidad existen un sin fin de academias alrededor del mundo, las cuales llevan esta arte marcial, no solo como un arte, sino también como una forma de vida, una inspiración. La Capoeira se ha convertido en una forma de integración social, ya que no importa de donde viene la persona que lo practica, no discrimina credo, ni estrato social, no se pretende demostrar la superioridad de alguien con respecto a los demás.
                                                     Mestres de diferentes escuelas y estilos participan en seminarios donde discuten la necesidad de hacer esta práctica accesible a las clases más desfavorecidas que no pueden permitirse el coste de una academia.<br>
                                                 </p>
                                                 <h2 id="titengcap" style="display: none;"><i>Capoeira, love and defense. An art of Brazilian freedom.</i></h2>
                                                 <br>
                                                 <p align="justify" id="englishcap" style="display: none;"> Capoeira is one of the martial arts’ with higger increase in recently years.Its utility as self defense and visual appeal makes that young  people show more interest for this sport. <br>
                                                 It was created in Brazil by African descendants with indigenous influences, probably in the early sixteenth century. It is known for its fast and complex movements, using arms and legs to execute maneuvers of great agility kicks, feints and takedowns, among others.Capoeira, as a fighting style, incorporates low and swept movements while in sports’ of more emphasis in acrobatics and skill ritualized demonstrations done.<br>
                                                There are several theories regarding the origin of the capoeira word. One of them is established by the Tupi-Guarani language where kapuêra results in the sequence of capuíra words, Capoeira and capoiera. According to some studies, the capoeira word would designate a special type of cages used in the transport of poultry (capon), which were driven by slaves to markets. The term would extend of the cages slaves from Angola in Africa. According to proponents of this hypothesis, while awaiting the arrival of traders, slaves amused themselves in the practice of their art-fight, also going to be referred to under the term (capoeira). He came to be extended to a forest clearing where this sport is practiced and then to a nearby town.<br>
                                                At present there are an endless number of academies around the world, which carry this martial art, not only as an art, but also as a way of life, an inspiration. Capoeira has become a form of social integration, because no matter where the person who practice it comes, will not be discriminated by creed, or social status, is not to demonstrate the superiority of one over the others.
                                                Mestres from different schools and styles participate in seminars where they discuss the need to make this accessible practice to the lower classes who can not afford the cost of an academy.<br>
                                                </p>
                                            </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane fade" id="tab3">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="img/Kart.jpg" width="300">
                                            </div>
                                            <div class="media-body">
                                                <h2 id="titespkar"><i>La mejor forma de entender el Karate-do es, no sólo practicar los katas, sino conseguir entender el significado de cada uno de ellos.</i></h2>
                                                <br>
                                                <p align="justify" id="españolkar">El Karate tradicional es, probablemente, el arte marcial más practicado en el mundo. Una de las principales razones de su popularidad es su accesibilidad: puede ser practicado por cualquier persona que goza de una salud promedio, y lo puede hacer a su propio ritmo, ya sea rápido o lento, de manera fuerte o con suavidad.<br>
                                                    Inicialmente, el Karate no fue desarrollado para ser un deporte, sino que fue diseñado como una forma de combate. Sus primeras competencias fueron luchas, lo que ocasionó graves lesiones entre sus practicantes. Con el crecimiento de la popularidad del Karate y el deseo de competir entre distintas escuelas, estilos y asociaciones, se hizo evidente la necesidad de un método organizado.<br>
                                                    El método organizado de competencia tiene como eje central el control. En las competencias de Karate se observa la rapidez, la fuerza y la técnica de los karatekas sin que eso implique herir a su adversario. Y aún más, se aprecia el control de sus emociones, a pesar de lo mal que se pudieran sentir, para mostrar en todo momento el espíritu deportivo.<br>
                                                    En el 550 a. C. el monje budista Daruma, viajó de India Oriental a China para llevar las enseñanzas de Buda. En su viaje, sus seguidores caían exhaustos. Al darse cuenta de esto, Daruma incorporó a sus enseñanzas un método de entrenamiento, que llamó Ekkin kyo, para desarrollar mente y cuerpo a niveles aceptables para tratar de adquirir la esencia del budismo. Este método fue llegando a otras partes de China bajo el nombre de Shorinji Kempo (Boxeo Chino). Después llegó a las Islas Ryu Kyu en donde se desarrolló un estilo llamado Okinawa-te, precursor del Karate.<br>
                                                    Debido a las continuas prohibiciones, en el territorio de Okinawa, de posesión de cualquier arma, un sistema de defensa “sin armas" cobró una gran importancia.<br>
                                                    Durante el período Menji, de 1868 a 1912, los jóvenes con entrenamiento en Karate impresionaron a los médicos que los examinaban  por su postura y definición muscular. En 1902 el Ministerio de Educación incluyó el Karate como disciplina habitual en las escuelas.<br>
                                                    En el verano de 1922 el Ministerio de Educación de Japón tiene su primera exhibición nacional atlética en Tokyo. El encargado de la presentación del Karate, tuvo que permanecer en Japón debido al gran interés de varias organizaciones. Funakoshi se dio a la tarea de esparcir el Karate dando pláticas y demostraciones, lo cual llevó el Karate a ser conocido a través de todo el mundo.<br>
                                                 </p>
                                                 <h2 id="titengkar" style="display: none;"><i>The best way of understanding the Karate-do is, not only to practise the katas, but to manage to understand the meaning of each one of them.</i></h2>
                                                 <br>
                                                 <p align="justify" id="englishkar" style="display: none;">The traditional karate is, probably, the martial art most practised in the world.One of the main reasons of it´s popularity could be the accessibility: it can be practised by anyone that enjoys a relative health, and can make it at his own rhythm, it could be rapid or slow, in a strong way or with smoothness<br>
                                                    At the beginning, the karate was not developed to be a sport, it was designed as a form of combat. Karate´s first competitions were fights, what caused serious injuries between his  participants. With the growth of the popularity of the Karate and the wish of compete between different schools, styles and associations, it was clearly the necessity of and organized method.<br>
                                                    The organized method of competition has as backbone the control. In the karate competitions  is observed the rapidity, the force and the technology of the karate experts, this doesn´t imply harming their adversary. And furthermore, it apreciate the control of their emotions, in spite of badly that could feel, in order to show in every moment the sport spirit. <br>
                                                    In the 550 a.C. the monk buddhist Daruma, travel from Oriental India to China to take Buda´s education. In his traveling, his followers were falling down exhausted. On having realized of this, Daruma added to his educations a training method; he called it Ekkin Kyo, for developing mind and body to acceptable levels, for trying to acquire buddhism essence. This method began to arrive to other parts of China by the name “Shorinji Kempo”. Later, it arrived to Ryu Kyu Islands, where it developed a style named “Okinawa-te”, predecessor of Karate.<br>
                                                    Because of the continuous prohibitions on Okinawa’s territory, possession of any kind of weapon, a defense system “without weapons” had a great importance. During Menji period, from 1868 to 1912, the younger with Karate’s training, impressed the doctors who were examining them for his position and muscular definition. On 1902 the Department of Education included Karate as an habitual discipline at schools.<br>
                                                    On summer of 1922 the Department of Education of Japan had it´s first athletic national exhibition in Tokyo. The manager of the presentation of Karate,needed to stay in Japan due to the great interest of several organizations. Funakoshi gave himself the task to spread the Karate giving chats and demostrations, which led the Karate to being known across the whole world.<br>
                                                </p>
                                            </div>
                                        </div>
                                     </div>
                                     
                                     <div class="tab-pane fade" id="tab4">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="img/Kung.jpg" width="300">
                                            </div>
                                            <div class="media-body">
                                                <h2 id="titespkun"><i>Si siempre fijas los limites en lo que puedes hacer, fisicamente o de cualquier otro modo, seguiras haciendo lo mismo el resto de tu vida, afectara a tu trabajo, a tu moralidad y a ti en todos los sentidos. no hay limites. No puedes quedarte siempre en la llanura; si te mata, te mata. Un hombre debe superar sus limites siempre.</i></h2>
                                                <br>
                                                <p align="justify" id="españolkun">El Kung-fu es una disciplina completa de lucha de origen chino basada en unos principios filosóficos de origen en extremo oriental (budismo y taoísmo fundamentalmente).<br>
                                                    El significado del término kung-fu es "habilidad o maestría". Es un coloquialismo chino para designar la habilidad adquirida con el tiempo, constancia, disciplina y esfuerzo, por lo que en el idioma chino se utiliza para resaltar la destreza en un arte o actividad; además de ser el término con el que se popularizaron las artes marciales chinas en occidente.<br>
                                                    En China existe constancia de tratados antiguos de lucha y táctica militar desde hace miles de años, quizás el más conocido sea “El arte de la guerra” del siglo VI a.C. Por otra parte, la filosofía en China también se conocía incluso antes de la construcción del Templo Shaolin.<br>
                                                    Se considera que el origen de las artes marciales chinas no emana de la lucha sino de sus principios filosóficos. Por ello, se datan los orígenes del kung-fu en el año 527 cuando un monje budista procedente de la India llamado Bodhidharma llegó al Monasterio de Shaolin.<br>
                                                    Es un arte marcial. Sus principios filosóficos lo diferencian de otros sistemas de lucha (deportivos, militares o civiles) que no los poseen.<br>
                                                    La denominación de las técnicas del kung-fu puede variar según el estilo, no sólo por el dialecto utilizado, sino porque cada técnica puede describirse de diferentes maneras, con el añadido de que la cultura china suele utilizar descripciones esotéricas que incluyen elementos de su mitología y tradición como el tigre o el dragón.<br>
                                                </p>
                                                <h2 id="titengkun" style="display: none;"><i>If always you fix the limits in what you can do, physically or of any other way, seguiras making the same the rest of your life, it was concerning your work, your morality and you in every sense. There are no limits. You cannot remain always in the plain; if it kills you, it kills you. A man must overcome his limits always.</i></h2>
                                                <br>
                                                <p align="justify" id="englishkun" style="display: none;">The Kung fu is a complete chinese discipline of fight. It’s based in some philosophical principles with a far eastern origin (budism and taoism mainly).<br>
                                                    The meaning of the “Kung Fu” term is “Ability or master’s degree”. It’s a chinese colloquialism for appoint the acquired skill with time, constancy, discipline and effort, so that in the chinese language is used for stand out the skill in an art or activity; also, it’s the term with were popularized the chinese martial arts in occident.<br>
                                                    In China exist constancy of old treaties of fight and military tactics since thousands of years, may be the best known is “The art of war” of the VI b. C. century. On the other hand, the philosophy in China was known even before the construction of the Shaolin Temple <br>
                                                    It’s considered that the origin of the chinese martial arts doesn’t emanate of the fight, but of its philosophical principles. Thus, the Kung fu’s origin dates in the year 547 when a buddhist monk from India named Bodhidharma arrived to the Shaolin’s monastery.<br>
                                                    It’s a martial art. Its philosophical principles differentiate it of the others systems of fight (sporting, military or civil) that they don’t have it.</li>
                                                    The denomination of the kung fu techniques can vary according to the style, not only for the dialect used,  but because each technique can be described of different ways, with the plus of that the chinese culture usually uses esoteric descriptions that include elements of its mythology and tradition, like the tiger or the dragon.</li>                                                    
                                                    
                                                
                                            </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane fade" id="tab5">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="img/Taek.jpg" width="300">
                                            </div>
                                            <div class="media-body">
                                                <h2 id="titesptae"><i>Hay demasiado énfasis en el éxito y en el fracaso, y muy poco en cómo la persona progresa a través del esfuerzo. Disfruta del viaje, disfruta de cada momento y deja de preocuparte por la victoria y la derrota</i></h2>
                                                <br>
                                                <p align="justify" id="españoltae">El taekwondo es un arte marcial transformado en deporte olímpico de combate desde el año 1988, cuando fue introducido como deporte de exhibición en los Juegos Olímpicos realizados en la ciudad de Seul en Corea del Sur, y en los de Barcelona en España de 1992, pasando a ser deporte olímpico oficial en los Juegos Olímpicos de Sidney en el año 2000. El taekwondo se destaca por la variedad y espectacularidad de sus técnicas de patadas y, actualmente, es uno de los deportes de combate más conocidos, y el Arte Marcial màs popular del planeta. El taekwondo se basa en artes marciales mucho más antiguas como el taekkyon coreano en la forma y realización de los golpes con el pie, y en el karate-do japonés, de donde obtiene los golpes con el puño, varios de los golpes a mano abierta, los bloqueos, las posiciones, el sistema de grados por cinturones, su primer uniforme, y sus primeras formas conocidas como "palgwe", en la WTF y las formas "Hyong" en la ITF, siendo reemplazadas por las formas "Taeguk" en la WTF, Y por las formas "Tul" en la ITF.<br>
                                                    Los maestros e instructores coreanos, debido a su fuerte nacionalismo y resentimiento tras la ocupación japonesa y la Guerra de Corea donde se produjo la división actual del país en Corea del Norte, y Corea del Sur; se ubican los orígenes del taekwondo; remontándose al año 50 d.C., a la práctica del arte marcial nativo llamado taekkyon, arte que incluso ha sido nombrado patrimonio inmaterial de la humanidad por las Naciones Unidas. Evidencia de su práctica fue hallada en tumbas antiguas por arqueólogos japoneses, donde algunas pinturas murales mostraban a dos hombres en una escena de pelea.<br>
                                                    Los militares de la dinastía Goguryeo desarrollaron un estilo de boxeo o arte marcial o "kempo coreano" basado en diversos estilos chinos, pero adaptados a sus propias necesidades. Era un estilo que daba mucha importancia a las patadas en lugar de los puñetazos. Este estilo de defensa personal sin armas es el denominado taekkyon.<br>
                                                    Otro arte marcial de gran importancia en esa época fue el subak. Se creó un cuerpo de guerreros organizados instruidos en este arte, denominado sonbe. En el año 400, el reino de Baekje intentó invadir el reino de Silla. Se dice que Gwanggaeto, apodado "el grande de Goguryeo", envió 50.000 tropas Sonbe de apoyo al reino de Silla, lo que supuso el primer contacto del reino de Silla con el subak<br>
                                                    Posteriormente, la dinastía Silla unificó los reinos después de ganar la guerra contra el reino de Baekje en 668 y contra el de Goguryeo en 670. Sus guerreros desempeñaron un papel importante en la unificación de la antigua Corea.<br>
                                                    Si bien el Taekwondo es un Arte Marcial milenario, en Occidente tiene relativamente poco tiempo de conocerse, no fue sino hasta despuès de la segunda guerra mundial y la guerra de Corea (50’s) que los coreanos empezaron a enseñar el Taekwondo a los soldados Occidentales. El nombre Taekwondo naciò en el año 1955, en la dècada de los 60`s se abrieron las primeras escuelas de Taekwondo en el continente Americano y Europeo, en el año 1973 nace la WTF y se realiza el primer campeonato mundial de Taekwondo, a principios de la dècada de los 80`s el Taekwondo es aceptado como deporte por el COI, en el año 1986 el Taekwondo participa por primera vez en unos juegos deportivos, y con esto se empieza a usar el casco en los combates, requisito que puso el COI para ser reconocido como deporte.<br>
                                                </p>
                                                <h2 id="titengtae" style="display: none;"><i>There is too many emphasis in the success and in the failure, and very little in how the person progresses across the effort. He enjoys the trip, enjoys every moment and stops worrying you for the victory and the defeat</i></h2>
                                                <br>
                                                <p align="justify" id="englishtae" style="display: none;">Taekwondo is a martial art transformed in an Olympic sport combat since 1988, when was introduced as an an exhibition sport in the Olympic Games realized on the city of Seoul, in South Korea and Barcelona, Spain on 1992, becoming an official Olympic sport in the Olympic Games of Sydney, in 2000. The taekwondo stand out for the variety and spectacularity of its kick’s techniques, and actually is one of the most known combat sports, and the most popular martial art in the planet. Taekwondo is based in the most older martial arts, like Korean taekkyon in the form and the kicks, and in Japanese Karate-Do, where it obtains the knocks with the fist, most of it with the open hand, locks, positions, grades system by belt, its first uniform, and its first known forms like “palgwe”, in the WTF and the forms “Hyong” in the ITF, being replaced by the forms “Taeguk” in the WTF and by the forms “Tul” in the ITF.<br>
                                                    The korean masters and instructors, cause his strong nationalism and resentment after the Japanese occupation and the Korea´s war; where it was produced the actual division in North Korea and South Korea, the origins of Taekwondo are located; going back to the year of 50 d.C., to the native martial art practice named as “taekkyon”, art that has been named as immaterial heritage of humanity by United States. Evidence of it´s practice was found inside antique coffins by Japanese Arqueologist´s, where some mural pictures showed two men on a fighting scene.<br>
                                                    Before the formation of the two you speak all together, the former three kingdoms coulf be, distinguished in Korea, being these:
                                                    Goguryeo (37 B. C. - 668 )
                                                    Baekje (18 B. C. - 600)
                                                    Silla(57 B. C. - 936)
                                                    The military men of the dynasty Goguryeo developed a style of boxing or martial art or “kempo Korean” based on diverse Chinese styles but adapted to his own needs. It was a style that was giving a lot of importance to the kicks instead of the punches. This style of self-defense without weapon is the called taekkyon.<br>
                                                    Another martial art of great importance in this epoch was the subak. There was created a body of organized warriors instructed in this art, named sonbe. In the year 400, Baekje’s kingdom tried to invade the kingdom of Silla. It is said that Gwanggaeto, nicknamed “The Goguryeo’s big one”, sent 50,000 troops. Sonbe of support to the kingdom of Silla, which supposed the first contact of the kingdom of Silla with the subak.<br>
                                                    Later, the dynasty Silla unified the kingdoms after gaining the war against Baekje’s kingdom in 668 and against that of Goguryeo in 570. His warriors played a role importantly in the unification of the former Korea.<br>
                                                    Though the Taekwondo is a Martial thousand-year-old Art, in West it has relatively a little time to be known, it was not but up to after the second world war and the war of Korea (50's) that the Koreans started teaching the Taekwondo to the soldiers Occidentales. The name Taekwondo was born in the year 1955, in the 60`s the Taekwondo's first schools were opened in the American and European continent, in the year 1973 the WTF is born and there is realized the Taekwondo's first world championship, at the beginning of the 80`s the Taekwondo is accepted as sport by the COI, in the year 1986 the Taekwondo it takes part for the first time in a few sports games, and with this one starts using the hull in the combats, requirement that the COI put to be recognized as sport<br>
                                                                                         
                                            </div>
                                        </div>
                                     </div>
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->

                

            </div><!--/.row-->
        </div><!--/.container-->
        
        <div class=" navbar-collapse navbar-left">

            <ul class="nav navbar-nav">


                <li class="dropdown">  
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Translate</b> <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu">
                        <li style="color:#c71208;" onclick="cambiar_a('english'); camcap('englishcap'); camkar('englishkar'); camkun('englishkun'); camtae('englishtae');/*Titulos*/ camtibox('titengbox'); camticap('titengcap'); camtikar('titengkar'); camtikun('titengkun'); camtitae('titengtae'); "><a href="#top" style="color:#c71208;"><b>Ingles</b></a></li>
                        <li style="color:#c71208;" onclick="cambiar_a('español'); camcap('españolcap'); camkar('españolkar'); camkun('españolkun'); camtae('españoltae');/*Titulos*/ camtibox('titespbox'); camticap('titespcap'); camtikar('titespkar'); camtikun('titespkun'); camtitae('titesptae'); "><a href="#top" style="color:#c71208;"><b>Español</b></a></li>

                    </ul>
                </li>

            </ul>
        </div>
    </section><!--/#content-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                   <img src="img/magnostadt.png" width="150" alt="Logo"> 
					&copy; 2016 <a target="_blank" >Magnostadt S.R.E.</a>. All Rights Reserved.
                </div>
                
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