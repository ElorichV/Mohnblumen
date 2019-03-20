document.onkeydown = desabilitar;
document.onselectstart = selecionar;
document.oncontextmenu = selecionar;

 "<link href='css/main.css' rel='stylesheet'>";
 "<link href='css/font-awesome.min.css' rel='stylesheet'>";
  
function Help(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:10%;left:5%;width:90%;height:87%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+
                    "<a href='#top' onclick='Del()'><b><p align = right>Cancelar&nbsp;&nbsp;&nbsp;</p></b></a>"+
                    
 			"<embed src='Report1.pdf#toolbar=0' ondragstart='return false' onselectstart='return false' oncontextmenu='return false' type='application/pdf' width='90%' height='90%'>"+
                    
                "</div>"+
            "</div>"+
        "</div>";
}

function HelpAd(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:10%;left:5%;width:90%;height:87%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+
                    "<a href='#top' onclick='Del()'><b><p align = right>Cancelar&nbsp;&nbsp;&nbsp;</p></b></a>"+
                    
 			"<embed src='camara.pdf#toolbar=0' type='application/pdf' width='90%' height='90%'>"+
                    
                "</div>"+
            "</div>"+
        "</div>";
}

function selecionar() { 
    return false; 
} 
function desabilitar() { 
    if (event.ctrlKey) { 
        switch(window.event.keyCode) { 
            case 67: 
            case 86:
            case 73:
            event.keyCode = 0; 
            return false;
            default: 
            break; 
        } 
    } 
}

function Del(){
    document.getElementById("Se").innerHTML="";
}
function Close(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar</p></b></a>"+
                    "<form name=confirmar action=ServletCerrar method=post>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=2>"+
                                    "<font size = 5><b>¿Seguro que deseas salir?<br><br></b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "<input type=submit value=Si>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function Forgot(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar</p></b></a>"+
                    "<form name=inicio action=ServletActualizarPass method=post onsubmit='return trop()'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=2>"+
                                    "<font size = 5><b>Actualiza tu contraseña</b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
				"<td>"+
                                    "Correo:"+
				"</td>"+
                                "<td id=j>"+
                                    "<input type=text id=ele maxlength=50 name='mail' onkeypress='return validarf(event)' onblur='valiele()'>"+
 				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "CURP:"+
                                "</td>"+
                                "<td>"+
                                    "<input type=text id=cur maxlength=18 name='curp'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Contraseña nueva:"+
                                "</td>"+
                                "<td>"+
                                    "<input type=password id=pas maxlength=15 name='pass'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+ 
                                "<td colspan = 2>"+
                                    "<input type=submit value=Actualizar>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function Sec(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar</p></b></a>"+
                    "<form name=inicio action=ServletIniciar method=post onsubmit='return trob()'>"+
 			"<table>"+
                            "<tr id=tit>"+
 				"<td colspan=2>"+
                                    "<font size=5><b>Iniciar Sesión</b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr id=Us>"+
				"<td>"+
                                    "Nickname:"+
				"</td>"+
                                "<td>"+
                                    "<input type=text id=nic maxlength=15 name='Nic'>"+
 				"</td>"+
                            "</tr>"+
                            "<tr id=Con>"+
                                "<td>"+
                                    "Contraseña:"+
                                "</td>"+
                                "<td>"+
                                    "<input type=password id=pas maxlength=15 name='Pass'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr id=Bot>"+
                                "<td colspan=2>"+
                                    "<input type=submit value=Entrar>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td id=Da >"+
                                   "<i onclick=Forgot() style='color:#c71208;cursor:pointer;'>¿Olvidaste tu contraseña?</i>"+
                                "</td>"+
                            "<tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function EliminarUsuario(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar</p></b></a>"+
                    "<form name = confirmar action = ServletKillUsu method = post onsubmit='return trolel()'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=2>"+
                                    "<font size = 5><b>Eliminar Usuario<br><br></b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Nickname:"+
                                "</td>"+
                                "<td>"+
                                    "<input type=text maxlength = 15 name = 'nic' id = 'nic'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan = 2>"+
                                    "<input type=submit value=Eliminar>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function ConsultarUsuario(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar</p></b></a>"+
                    "<form name = confirmar action = ServletConsUsu method = post onsubmit='return trolel()'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=2>"+
                                    "<font size = 5><b>Consulta Especifica<br><br></b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Nickname:"+
                                "</td>"+
                                "<td>"+
                                    "<input type=text maxlength = 15 name = 'nic' id = 'nic'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan = 2>"+
                                    "<input type=submit value=Consultar>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function edit(correo, password){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar&nbsp;&nbsp;&nbsp;</p></b></a>"+
                    "<form name=edit action=ServletEditarPerfil method=post onsubmit='return troac()'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=3>"+
                                    "<font size=5><b>Modifica tus Datos</b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
				"<td>"+
                                    "Correo electronico:"+
				"</td>"+
                                "<td colspan=2 id=j>"+
                                    "<input type=text id=ele name='mail' maxlength=50 value='"+correo+"' onkeypress='return validarf(event)' onblur='valiele()'>"+
 				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "¿Practicas algun deporte?"+
                                "</td>"+
                                "<td>"+
                                    "Si <input type=radio name='dep' value = x onclick=dop()>"+
                                "</td>"+
                                "<td id=p>"+
                                    "No <input type=radio name='dep' value=1 onclick=dopno() checked >"+
                                "</td>"+
                            "</tr>"+
                            "<tr id=gh>"+                                    
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Contraseña:"+
                                "</td>"+
                                "<td colspan = 2>"+
                                    "<input type=password maxlength=15 value = '" + password +"' name = 'pass' id = 'pass'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan = 3>"+
                                    "<input type=submit value='Modificar'>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}

function Delete(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:18%;left:5%;width:90%;height:79%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+ 
                    "<br><a href='#top' onclick='Del()'><b><p align = right>Cancelar</p></b></a>"+
                    "<form name = edit action = 'ServletDelAc' method = post onsubmit='return trodel()'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=3>"+
                                    "<font size = 5><b>Eliminar cuenta</b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
				"<td>"+
                                    "CURP:"+
				"</td>"+
                                "<td colspan = 2>"+
                                    "<input type=text name = 'curp' maxlength=18 id = 'curp'>"+
 				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Contraseña:"+
                                "</td>"+
                                "<td colspan = 2>"+
                                    "<input type=password maxlength=15 name = 'pass' id = 'pass'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan = 3>"+
                                    "<input type=submit value='Eliminar'>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function Re(){ 
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:10%;left:5%;width:90%;height:87%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+
                    "<a href='#top' onclick='Del()'><b><p align = right>Cancelar&nbsp;&nbsp;&nbsp;</p></b></a>"+
                    "<form name='rego' action=ServletRegistro method=post onsubmit='return trol()' onpaste='return false'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=3>"+
                                    "<font size = 5><b>Ingresa tus Datos</b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
				"<td>"+
                                    "Nombre: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
				"</td>"+
                                "<td colspan=2>"+
                                    "<input type=text id=nom name=nom maxlength=40  onCopy='return false' onDrag='return false' onDrop='return false' onkeypress='return validarl(event)' 'onPaste='return false'>"+
 				"</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Apellido Paterno: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan=2>"+
                                    "<input type=text id=apep name=app maxlength=30 onCopy='return false' onDrag='return false' onDrop='return false' onkeypress='return validarl(event)' 'onPaste='return false'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Apellido Materno: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan=2>"+
                                    "<input type=text id=apem name=apm maxlength=30 onCopy='return false' onDrag='return false' onDrop='return false' onkeypress='return validarl(event)' 'onPaste='return false'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                   "Correo Electronico: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "<td id=j  colspan=2>"+
                                    "<input type=text maxlength=50 id=ele name=mail  onblur='valiele()' onCopy='return false' onDrag='return false' onDrop='return false' onkeypress='return validarf(event)' 'onPaste='return false'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan=3>"+
                                    "Fecha de Nacimiento"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Año <i class='far fa-asterisk' style='color:#c71208;'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+
                                    "<select name=an id=an onclick=dias()>"+
                                        "</select>"+
                                "</td>"+
                                "<td>"+
                                    "Mes <i class='far fa-asterisk' style='color:#c71208;'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+
                                    "<select name=me onclick=dias()>"+
                                        "<option value=01>Enero</option>"+
                                        "<option value=02>Febrero</option>"+
                                        "<option value=03>Marzo</option>"+
                                        "<option value=04>Abril</option>"+
                                        "<option value=05>Mayo</option>"+
                                        "<option value=06>Junio</option>"+ 
                                        "<option value=07>Julio</option>"+
                                        "<option value=08>Agosto</option>"+
                                        "<option value=09>Septiembre</option>"+
                                        "<option value=10>Octubre</option>"+
                                        "<option value=11>Noviembre</option>"+
                                        "<option value=12>Diciembre</option>"+
                                    "</select>"+
                                "</td>"+
                                "<td>"+
                                    "Dia <i class='far fa-asterisk' style='color:#c71208;'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+
                                    "<select name=di id=sel>"+
                                        "<option value = 1>1</option>" +
                                        "<option value = 2>2</option>" +
                                        "<option value = 3>3</option>" +
                                        "<option value = 4>4</option>" +
                                        "<option value = 5>5</option>" +
                                        "<option value = 6>6</option>" +
                                        "<option value = 7>7</option>" +
                                        "<option value = 8>8</option>" +
                                        "<option value = 9>9</option>" +
                                        "<option value = 10>10</option>" +
                                        "<option value = 11>11</option>" +
                                        "<option value = 12>12</option>" +
                                        "<option value = 13>13</option>" +
                                        "<option value = 14>14</option>" +
                                        "<option value = 15>15</option>" +
                                        "<option value = 16>16</option>" +
                                        "<option value = 17>17</option>" +
                                        "<option value = 18>18</option>" +
                                        "<option value = 19>19</option>" +
                                        "<option value = 20>20</option>" +
                                        "<option value = 21>21</option>" +
                                        "<option value = 22>22</option>" +
                                        "<option value = 23>23</option>" +
                                        "<option value = 24>24</option>" +
                                        "<option value = 25>25</option>" +
                                        "<option value = 26>26</option>" +
                                        "<option value = 27>27</option>" +
                                        "<option value = 28>28</option>" +
                                        "<option value = 29>29</option>" +
                                        "<option value = 30>30</option>" +
                                        "<option value = 31>31</option>" +
                                    "</select>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Genero <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td>"+
                                    "Masculino: <input type=radio name=gen value=1>"+
                                "</td>"+
                                "<td>"+
                                    "Femenino: <input type=radio name=gen value=2>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "CURP: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td id=g colspan=2>"+
                                    "<input type=text id=cur name=curp maxlength=18 onkeypress='return validarc(event)' onblur='cud()'>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "¿Practicas algun deporte? <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td>"+
                                    "Si <input type=radio name=dep value=x onclick=dop()>"+
                                "</td>"+
                                "<td id=p>"+
                                    "No <input type=radio name=dep value=1 onclick=dopno()>"+
                                "</td>"+
                            "</tr>"+
                            "<tr id=gh>"+

                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Nickname: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td  colspan=2>"+
                                    "<input type=text id=nic name=nic maxlength=15>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Contraseña: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan=2>"+
                                    "<input type=password id=pas name=pas maxlength=15>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td style='font-size: 11px;';>"+
                                    "<i class='far fa-asterisk' style='color:#c71208;'></i> Campos obligatorios."+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan=3>"+
                                    "<input type=submit value='¡Registrate!'>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}
function addAdm(){
    document.getElementById("Se").innerHTML="<div style='z-index:25;width:100%;height:100%;background-color:rgba(0,0,0,0.7);position:fixed;'>"+
            "<div style='z-index:26;position:fixed;top:10%;left:5%;width:90%;height:87%;background-color:white;'>"+
                "<div style=z-index:27;position:fixed;top:13%;left:14%;width:80%;height:83%;overflow-y:auto;>"+
                    "<a href='#top' onclick='Del()'><b><p align = right>Cancelar&nbsp;&nbsp;&nbsp;</p></b></a>"+
                    "<form name='regAdm' action=ServletAddAdm method=post onsubmit='return trol2()'>"+
 			"<table>"+
                            "<tr>"+
 				"<td colspan=3>"+
                                    "<font size = 5><b>Ingresa los datos del usuario</b></font>"+
				"</td>"+
                            "</tr>"+
                            "<tr>"+
				"<td>"+
                                    "Nombre: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
				"</td>"+
                                "<td colspan = 2>"+
                                    "<input type=text id=nom name = nom maxlength=40 onkeypress='return validarl(event)'>"+
 				"</td>"+
                                "<td id=ab>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Apellido Paterno: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan = 2>"+
                                    "<input type=text id=apep name = app maxlength=30 onkeypress='return validarl(event)'>"+
                                "</td>"+
                                "<td id=bc>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Apellido Materno: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan = 2>"+
                                    "<input type=text id=apem name = apm maxlength=30 onkeypress='return validarl(event)'>"+
                                "</td>"+
                                "<td id=cd>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                   "Correo Electronico: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "<td id=j colspan = 2>"+
                                    "<input type=text maxlength=50 id=ele name=mail onkeypress='return validarf(event)' onblur='valiele()'>"+
                                "</td>"+
                                "<td id=de>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan=3>"+
                                    "Fecha de Nacimiento"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Año <i class='far fa-asterisk' style='color:#c71208;'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+
                                    "<select name=an id=an onclick=dias()>"+
                                    "</select>"+
                                "</td>"+
                                "<td>"+
                                    "Mes <i class='far fa-asterisk' style='color:#c71208;'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+
                                    "<select name=me onclick=dias()>"+
                                        "<option value=01>Enero</option>"+
                                        "<option value=02>Febrero</option>"+
                                        "<option value=03>Marzo</option>"+
                                        "<option value=04>Abril</option>"+
                                        "<option value=05>Mayo</option>"+
                                        "<option value=06>Junio</option>"+ 
                                        "<option value=07>Julio</option>"+
                                        "<option value=08>Agosto</option>"+
                                        "<option value=09>Septiembre</option>"+
                                        "<option value=10>Octubre</option>"+
                                        "<option value=11>Noviembre</option>"+
                                        "<option value=12>Diciembre</option>"+
                                    "</select>"+
                                "</td>"+
                                "<td>"+
                                    "Dia <i class='far fa-asterisk' style='color:#c71208;'></i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+
                                    "<select name=di id=sel>"+
                                        "<option value = 1>1</option>" +
                                        "<option value = 2>2</option>" +
                                        "<option value = 3>3</option>" +
                                        "<option value = 4>4</option>" +
                                        "<option value = 5>5</option>" +
                                        "<option value = 6>6</option>" +
                                        "<option value = 7>7</option>" +
                                        "<option value = 8>8</option>" +
                                        "<option value = 9>9</option>" +
                                        "<option value = 10>10</option>" +
                                        "<option value = 11>11</option>" +
                                        "<option value = 12>12</option>" +
                                        "<option value = 13>13</option>" +
                                        "<option value = 14>14</option>" +
                                        "<option value = 15>15</option>" +
                                        "<option value = 16>16</option>" +
                                        "<option value = 17>17</option>" +
                                        "<option value = 18>18</option>" +
                                        "<option value = 19>19</option>" +
                                        "<option value = 20>20</option>" +
                                        "<option value = 21>21</option>" +
                                        "<option value = 22>22</option>" +
                                        "<option value = 23>23</option>" +
                                        "<option value = 24>24</option>" +
                                        "<option value = 25>25</option>" +
                                        "<option value = 26>26</option>" +
                                        "<option value = 27>27</option>" +
                                        "<option value = 28>28</option>" +
                                        "<option value = 29>29</option>" +
                                        "<option value = 30>30</option>" +
                                        "<option value = 31>31</option>" +
                                    "</select>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                            "<td>"+
                                    "Genero <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td>"+
                                    "Masculino: <input type=radio name=gen value=1 checked>"+
                                "</td>"+
                                "<td>"+
                                    "Femenino: <input type=radio name=gen value=2>"+
                                "</td>"+
                                "<td id=ef>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "CURP: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td id=g colspan = 2>"+
                                    "<input type=text id=cur name=curp maxlength=18 onkeypress='return validarc(event)' onblur='cud()'>"+
                                "</td>"+
                                "<td id=fg>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "¿Practica algun deporte? <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td>"+
                                    "Si <input type=radio name=dep value = x onclick=dop()>"+
                                "</td>"+
                                "<td>"+
                                    "No <input type=radio name=dep value=1 onclick = dopno() checked>"+
                                "</td>"+
                            "</tr>"+
                            "<tr id=gh>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Nickname: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan = 2>"+
                                    "<input type=text id=nic name = nic maxlength=15>"+
                                "</td>"+
                                "<td id=hi>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Contraseña: <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td colspan = 2>"+
                                    "<input type=password id=pas name = pas maxlength=15>"+
                                "</td>"+
                                "<td id=ij>"+
                                    
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td>"+
                                    "Privilegios de administrador <i class='far fa-asterisk' style='color:#c71208;'></i>"+
                                "</td>"+
                                "<td>"+
                                    "Si <input type=radio name=adm value=1>"+
                                "</td>"+
                                "<td id=p>"+
                                    "No <input type=radio name=adm value=2>"+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td style='font-size: 11px;';>"+
                                    "<i class='far fa-asterisk' style='color:#c71208;'></i> Campos obligatorios."+
                                "</td>"+
                            "</tr>"+
                            "<tr>"+
                                "<td colspan=3>"+
                                    "<input type=submit value='Registrar')>"+
                                "</td>"+
                            "</tr>"+
                        "</table>"+
                    "</form>"+
                "</div>"+
            "</div>"+
        "</div>";
}

function weba(){
    var i=2003;
    var txt;
    for(i;i>1935;i--){
        txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
    }
    document.getElementById("an").innerHTML=txt;
}
function dias(){
    var mes=parseInt(document.rego.me.value);
    var amo=parseInt(document.rego.an.value);
    var select=document.getElementById("sel");
    var txt;
    if(mes===01 || mes===03 || mes===05 || mes===07 || mes===08 ||mes===10 || mes===12){
        for(var i=1;i<=31;i++){
            txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
        }
        select.innerHTML=txt;
    }else if(mes===02 || mes===04 || mes===06 || mes===09 || mes===11){
        if(mes===02){
            if(amo===1960){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1964){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1968){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1972){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1976){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1980){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1984){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1988){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1992){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===1996){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===2000){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===2004){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===2008){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===2012){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else if(amo===2016){
               for(var i=1;i<30;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt; 
            }
            else{
                for(var i=1;i<=28;i++){
                    txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
                }
                select.innerHTML=txt;
            }
        }
        else{
            for(var i=1;i<=30;i++){
                txt=txt+'<option value="'+(i)+'">'+(i)+'</option>';
            }
            select.innerHTML=txt;
        }
    }
}


function dop(){
    document.getElementById("gh").innerHTML="<td>"+
            "¿Cual?"+
        "</td>"+
        "<td>"+
            "<select name=de>"+
                "<option value=6>Basquetbol</option>"+
                "<option value=2>Voleybol</option>"+
                "<option value=3>Futbol</option>"+
                "<option value=4>Hockey</option>"+
                "<option value=5>Natación</option>"+
        "</td>";
}

function dopno(){
    document.getElementById("gh").innerHTML="";
}

 function validarl(e){
    teclad=(document.all) ? e.keyCode : e.which;
    if (teclad===8 || teclad===11) return true;{
            patron=/[A-Za-z]/;
            tec=String.fromCharCode(teclad);
            return patron.test(tec);
    }
}

 function validarf(e){
    teclad=(document.all) ? e.keyCode : e.which;
    if (teclad===8 || teclad===11) return true;{
            patron=/[A-Za-z0-9@_.]/;
            tec=String.fromCharCode(teclad);
            return patron.test(tec);
    }
} 

function validarc(e){
    teclad=(document.all) ? e.keyCode : e.which;
    if (teclad===8 || teclad===11) return true;{
            patron=/[A-Za-z0-9]/;
            tec=String.fromCharCode(teclad);
            return patron.test(tec);
    }
}

function valiele(){
    var ele=document.getElementById("ele").value;
    var i;
    var x=ele.length;
    var y;
    var z; 
    if(x<5){
        z=false;
    }else{
        for(i=1;i<x;i++){
            y=ele.charAt(i);
            if(i===1){
                if(y==="@"){
                    z=false;
                    break;
                }
            }
            if(y==="@"){
                i=i+2;
                for(i;i<x;i++){
                    y=ele.charAt(i);
                    if(y==="."){
                        z=true;
                        break;
                    }else{
                        z=false;
                    }
                }
                if(z===true){
                    break;
                }else{
                    z=false;
                }
            }else{
                z=false;   
            }
        }
    }
    if(z===false){
        document.getElementById("j").innerHTML="";
        document.getElementById("j").innerHTML="<input type=text maxlength=50 id=ele name=mail onkeypress='return validarf(event)' onblur='valiele()'>";
    }
}

function cud(){
    var a=document.getElementById("cur").value;
    a=a.toUpperCase();
    var b=a.length;
    if(b<18){
       document.getElementById("g").innerHTML="";
       document.getElementById("g").innerHTML="<input type=text id=cur name=curp maxlength=18 onkeypress='return validarc(event)' onblur='cud()'>";
    }
}

function trol(){
    var a=document.getElementById("nom").value;
    var b=document.getElementById("apep").value;
    var c=document.getElementById("apem").value;
    var d=document.getElementById("ele").value;
    var e=document.getElementsByName("gen")[0].checked;
    var f=document.getElementsByName("gen")[1].checked;
    var h=document.getElementById("cur").value;
    var i=document.getElementsByName("dep")[0].checked;
    var j=document.getElementsByName("dep")[1].checked;
    var k=document.getElementById("nic").value;
    var l=document.getElementById("pas").value;
    var x;
    if((a===null || b===null || c===null || d===null || h===null || k===null || l===null) || (a==="" || b==="" || c==="" || d==="" || h==="" || k==="" || l==="")){
        x=false;
    }else if(e===false & f===false){
        x=false;
    }else if(i===false & j===false){
        x=false;
    }else{
        x=true;
    }
    return x;
}
function trol2(){
    var a=document.getElementById("nom").value;
    var b=document.getElementById("apep").value;
    var c=document.getElementById("apem").value;
    var d=document.getElementById("ele").value;
    var e=document.getElementsByName("gen")[0].checked;
    var f=document.getElementsByName("gen")[1].checked;
    var h=document.getElementById("cur").value;
    var i=document.getElementsByName("dep")[0].checked;
    var j=document.getElementsByName("dep")[1].checked;
    var k=document.getElementById("nic").value;
    var l=document.getElementById("pas").value;
    var m=document.getElementsByName("adm")[0].checked;
    var n=document.getElementsByName("adm")[1].checked;
    var x;
    if((a===null || b===null || c===null || d===null || h===null || k===null || l===null) || (a==="" || b==="" || c==="" || d==="" || h==="" || k==="" || l==="")){
        x=false;
    }else if(e===false & f===false){
        x=false;
    }else if(i===false & j===false){
        x=false;
    }else if(m===false & n===false){
        x=false;
    }else{
        x=true;
    }
    return x;
}

function trop(){
    var a=document.getElementById("ele").value;
    var b=document.getElementById("cur").value;
    var c=document.getElementById("pas").value;
    if((a===null || b===null || c===null) || (a==="" || b==="" || c==="")){
        return false;
    }else{
        return true;
    }
}

function trob(){
    var a=document.getElementById("nic").value;
    var b=document.getElementById("pas").value;
    var z;
    if((a===null || b===null) || (a==="" || b==="")){
        return false;
    }else{
        return true;
    }
}
function trodel(){
    var a=document.getElementById("curp").value;
    var b=document.getElementById("pass").value;
    var z;
    if((a===null || b===null) || (a==="" || b==="")){
        return false;
    }else{
        return true;
    }
}

function troac(){
    var a=document.getElementById("ele").value;
    var b=document.getElementById("pass").value;
    var z;
    if((a===null || b===null) || (a==="" || b==="")){
        return false;
    }else{
        return true;
    }
}
function trolel(){
    var a=document.getElementById("nic").value;
    var z;
    if(a===null || a===""){
        return false;
    }else{
        return true;
    }
}

/*Cambiar texto de box Ing-Esp*/
function camtibox(lenguaje){
  document.getElementById('titengbox').style.display= (lenguaje=='titengbox')? 'inline' : 'none';
  document.getElementById('titespbox').style.display= (lenguaje=='titespbox')? 'inline' : 'none';
}
function cambiar_a(lenguaje){          
  document.getElementById('english').style.display= (lenguaje=='english')? 'inline' : 'none';
  document.getElementById('español').style.display= (lenguaje=='español')? 'inline' : 'none';
}

/*Cambiar texto Capoeira Ing-Esp*/
function camticap(lenguaje){
  document.getElementById('titengcap').style.display= (lenguaje=='titengcap')? 'inline' : 'none';
  document.getElementById('titespcap').style.display= (lenguaje=='titespcap')? 'inline' : 'none';
}
   function camcap(lenguaje){
  document.getElementById('englishcap').style.display= (lenguaje=='englishcap')? 'inline' : 'none';
  document.getElementById('españolcap').style.display= (lenguaje=='españolcap')? 'inline' : 'none';
}

/*Cambiar texto Karate Ing-Esp*/
function camtikar(lenguaje){
  document.getElementById('titengkar').style.display= (lenguaje=='titengkar')? 'inline' : 'none';
  document.getElementById('titespkar').style.display= (lenguaje=='titespkar')? 'inline' : 'none';
}
function camkar(lenguaje){
  document.getElementById('englishkar').style.display= (lenguaje=='englishkar')? 'inline' : 'none';
  document.getElementById('españolkar').style.display= (lenguaje=='españolkar')? 'inline' : 'none';
}


/*Cambiar texto Kung Fu Ing-Esp*/
function camtikun(lenguaje){
  document.getElementById('titengkun').style.display= (lenguaje=='titengkun')? 'inline' : 'none';
  document.getElementById('titespkun').style.display= (lenguaje=='titespkun')? 'inline' : 'none';
}
   function camkun(lenguaje){
  document.getElementById('englishkun').style.display= (lenguaje=='englishkun')? 'inline' : 'none';
  document.getElementById('españolkun').style.display= (lenguaje=='españolkun')? 'inline' : 'none';
}

/*Cambiar texto Taewondo Ing-Esp*/
 function camtitae(lenguaje){
  document.getElementById('titengtae').style.display= (lenguaje=='titengtae')? 'inline' : 'none';
  document.getElementById('titesptae').style.display= (lenguaje=='titesptae')? 'inline' : 'none';
}
   function camtae(lenguaje){
  document.getElementById('englishtae').style.display= (lenguaje=='englishtae')? 'inline' : 'none';
  document.getElementById('españoltae').style.display= (lenguaje=='españoltae')? 'inline' : 'none';
} 
   

