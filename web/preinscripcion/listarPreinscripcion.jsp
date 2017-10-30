<%-- 
    Document   : listarPreinscripcion
    Created on : 31/08/2017, 04:45:42 PM
    Author     : Jhonjos_Jonjos_30
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.nivariaAdmin.modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="com.nivariaAdmin.dao.personaDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listas - Preinscripciones</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/animate.css" rel="stylesheet" type="text/css" />
        <link href="../css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../plugins/scroll/nanoscroller.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="../plugins/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="../plugins/bootstrap-timepicker/compiled/timepicker.css" />
        <link rel="stylesheet" type="text/css" href="../plugins/bootstrap-colorpicker/css/colorpicker.css" />
        
        <link href="../css/font-awesome.css" rel="stylesheet" type="text/css" />
    </head>
    
    <%
        personaDaoImpl person = new personaDaoImpl();
        List<Persona> ListarPers = new ArrayList();
    %>    
    
    <%
        personaDaoImpl pd = new personaDaoImpl();
        String codPersona = pd.generarCodigo();
    %>
    
    <script type="text/javascript">
        function mostrar(){
            document.getElementById('ocultar1').style.display = 'block';
            document.getElementById('ocultar2').style.display = 'block';
            document.getElementById('ocultar3').style.display = 'block';
        }
        function ocultar(){
            document.getElementById('ocultar1').style.display = 'none';
            document.getElementById('ocultar2').style.display = 'none';
            document.getElementById('ocultar3').style.display = 'none';
        }
    </script>
    <body>        
        <div class="container">
            <div class="row">
                <div class="col-md-12" align="center">
                    <h2>PreInscritos</h2>
                </div>
                <br/>                
                <br/>
                
                <div class="row">
                    <div class="col-sm-4">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Ingrese el N° de documento ó el código">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                            </span>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="btn-group pull-right">
                            <b>
                                <button class="btn btn-info btn-lg" data-toggle="modal" data-target="#crearPreinscripcion" title="Nuevo PreInscripcion">
                                    <i class="glyphicon glyphicon-plus"></i>
                                </button>
                            </b>
                        </div>
                    </div>
                </div>         
                <br>
                <!--Aqui se listan todos los datos requeridos de personas que se encuentren con estado pre-inscritos en la base de datos-->
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-condensed">
                            <thead>
                                <tr class="active info">
                                <th>Código</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Programa</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                                <!--Este array nos permitira listar todos los registros en la BD-->
                                <%
                                    ListarPers = person.listar();
                                    for(Persona p : ListarPers){
                                %>
                                <tr>                                    
                                    <td><%= p.getCodigoRegistro() %></td>
                                    <td><%= p.getNombres()%></td>
                                    <td><%= p.getApellidos()%></td>
                                    <td>....</td>
                                    <td><%= p.getEstado()%></td>
                                    <td>
                                        <div class="btn-group btn-group-sm">
                                            <a href="verPreiscrito.jsp" class="btn btn-success">
                                                <span class="glyphicon glyphicon-eye-open"></span>
                                            </a>
                                            <a href="modificarPreinscripcion.jsp" class="btn btn-info">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            <a href="#" class="btn btn-danger">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
        
        <!--Aqui comienza la ventana modal que permitira registrar nuevas pre-inscripciones-->                            
                            
        <div class="modal fade" id="crearPreinscripcion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
          <div class="modal-dialog modal-lg">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title" id="myModalLabel">Nueva Pre-Inscripción</h4>
                  </div>
                  
                  <!--Inicio del Modal Body-->
                  <div class="modal-body">
                      <div class="porlets-content">
                          <div class="basic-wizard" id="progressWizard">
                              <ul class="nav nav-pills nav-justified">
                                  <li class="active"><a data-toggle="tab" href="#infoBasic"><span>1:</span> Información Basica</a></li>
                                  <li><a data-toggle="tab" href="#infoPers"><span>2:</span> Información Personal</a></li>
                                  <li><a data-toggle="tab" href="#infoCompl"><span>3:</span> Información Laboral</a></li>
                                  <li><a data-toggle="tab" href="#cargarArch"><span>4:</span> Adjuntar</a></li>
                              </ul>
                              
                              <br><br>
                              
                              <form action="PersonaSvl" method="get">
                              
                              <div class="tab-content">
                                  <div id="infoBasic" class="tab-pane active">
                                      <form class="form">
                                          <div class="row">
                                              
                                              <div class="form-group">
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4">Código</label>
                                                      <div class="col-sm-8">
                                                          <input type="text" class="form-control" name="codigo" placeholder="código" value="<%= codPersona %>" disabled>
                                                      </div>
                                                  </div>
                                             
                                                   <div class="col-sm-6">
                                                      <label class="control-label col-sm-4">Fecha de registro</label>
                                                      <div class="col-sm-8">
                                                          <input type="text" class="form-control" size="30" value="23-10-2017" name="fechaRegistro" readonly="">
                                                      </div>
                                                  </div>      
                                              </div>
                                          
                                          </div>
                                                      
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group">
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4">Nombres</label>
                                                      <div class="col-sm-8">
                                                          <input type="text" class="form-control" name="nombres" required="Requiere que ingrese un nombre">
                                                      </div>
                                                  </div>
                                                  
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4">Apellidos</label>
                                                      <div class="col-sm-8">
                                                          <input type="text" class="form-control" name="apellidos" required="Requiere que ingrese un apellido">
                                                      </div>
                                                  </div>
                                              </div>
                                          
                                          </div>
                                              
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group">
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4 control-label">Tipo de programa de interes</label>
                                                      <div class="col-sm-8">
                                                          <select class="form-control" id="tprog1" name="tprog1" onchange="populate(this.id,'nprog2')">
                                                              <option selected>- Seleccione Una Opción -</option>
                                                              <option value="TIT">Titulada </option>
                                                              <option value="COR"> Corto </option>
                                                              <option value="FLA"> Flash </option>
                                                              <option value="OTR"> Otro </option>
                                                          </select>
                                                      </div>
                                                  </div>
                                                  
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4 control-label">Nombre Del Programa</label>
                                                      <div class="col-sm-8">
                                                          <select name="nprog2" id="nprog2" class="form-control">
                                                              <option active>- Seleccione Una Opción -</option>
                                                          </select>
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                          </div>
                                      
                                      </form>
                                  
                                  </div>
                                                      
                                  <div id="infoPers" class="tab-pane">
                                      <form class="form">
                                          
                                          <div class="row">
                                              
                                              <div class="form-group">
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4 control-label">Fecha de nacimiento</label>
                                                      <div class="col-sm-8">
                                                          <input type="date" name="cumpleaños" placeholder="2017-10-24" class="form-control date-time">
                                                      </div>
                                                  </div>
                                                  
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4 control-label">Genero</label>
                                                      <div class="col-sm-8">
                                                          <select class="form-control" name="genero">
                                                              <option selected>Seleccione una opcion</option>
                                                              <option value="1">Femenino</option>
                                                              <option value="2">Masculino</option>
                                                          </select>
                                                      </div>
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group">
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4 control-label">Lugar de nacimiento</label>
                                                        <div class="col-sm-8">
                                                            <select class="form-control" id="departamento" name="departamento" onchange="munColombia(this.id,'municipio')">
                                                                <option selected="">- Seleccione Una Opción -</option>
                                                                <option value="Amazonas"> Amazonas </option>
                                                                <option value="Antioquia"> Antioquia </option>
                                                                <option value="Arauca"> Arauca </option>
                                                                <option value="Atlántico"> Atlántico </option>
                                                                <option value="Bogotá"> Bogotá </option>
                                                                <option value="Bolívar"> Bolívar </option>
                                                                <option value="Boyacá"> Boyacá </option>
                                                                <option value="Caldas"> Caldas </option>
                                                                <option value="Caquetá"> Caquetá </option>
                                                                <option value="Casanare"> Casanare </option>
                                                                <option value="Cauca"> Cauca </option>
                                                                <option value="Cesar"> Cesar </option>
                                                                <option value="Chocó"> Chocó </option>
                                                                <option value="Córdoba"> Córdoba </option>
                                                                <option value="Cundinamarca"> Cundinamarca </option>
                                                                <option value="Guainía"> Guainía </option>
                                                                <option value="Guaviare"> Guaviare </option>
                                                                <option value="Huila"> Huila </option>
                                                                <option value="La Guajira"> La Guajira </option>
                                                                <option value="Magdalena"> Magdalena </option>
                                                                <option value="Meta"> Meta </option>
                                                                <option value="Nariño"> Nariño </option>
                                                                <option value="Norte De Santander"> Norte De Santander </option>
                                                                <option value="Putumayo"> Putumayo </option>
                                                                <option value="Quindío"> Quindío </option>
                                                                <option value="Risaralda"> Risaralda </option>
                                                                <option value="San Adrés y Providencia"> San Adrés y Providencia </option>
                                                                <option value="Santander"> Santander </option>
                                                                <option value="Sucre"> Sucre </option>
                                                                <option value="Tolima"> Tolima </option>
                                                                <option value="Valle Del Cauca"> Valle Del Cauca </option>
                                                                <option value="Vaupés"> Vaupés </option>
                                                                <option value="Vichada"> Vichada </option>
                                                            </select>
                                                        </div>
                                                  </div>
                                                  
                                                  <div class="col-sm-6">
                                                      <label class="col-sm-4 control-label">Municipio o Corregimiento</label>
                                                      <div class="col-sm-8">
                                                          <select class="form-control" id="municipio" name="municipio">
                                                              <option active>- Municipio/Corregimiento -</option>
                                                          </select>
                                                      </div>
                                                  </div>
                                              
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                <label for="example-tipoIdent-input" class="col-sm-4 control-label">Tipo identificación</label>
                                                  <div class="col-md-8">
                                                      <select class="form-control" name="tipoIdent">
                                                          <option value="">- Seleccione -</option>
                                                          <option value="RC"> Registro Civil </option>
                                                          <option value="TI"> Tarjeta de Identidad </option>
                                                          <option value="CS"> Contraseña </option>
                                                          <option value="CC"> Cedula de Ciudadania </option>
                                                          <option value="CE"> Cedula Extranjeria </option>
                                                          <option value="PS"> Pasaporte </option>
                                                      </select>
                                                  </div>
                                              </div>
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Número del Documento</label>
                                                  <div class="col-sm-8">
                                                      <input type="text" class="form-control" placeholder="N° Documento" name="ndoc">
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Dierección</label>
                                                  <div class="col-sm-8">
                                                      <input type="text" class="form-control" placeholder="Nomenclatura" name="ncasa">
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Localidad</label>
                                                  <div class="col-sm-8">
                                                      <input type="email" class="form-control" placeholder="Barrio" name="barrio">
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Nro De contacto</label>
                                                  <div class="col-sm-8">
                                                      <input parsley-type="telefono" type="text" class="form-control" placeholder="(XXX)- XXX XX XX" name="telf">
                                                  </div>
                                              </div>
                                              
                                              <div class="col-md-6 form-group">
                                                  <label class="col-sm-4">E-Mail</label>
                                                  <div class="col-sm-8">
                                                      <input type="email" class="form-control" placeholder="Ejemplo@dominio.com" name="correo">
                                                  </div>
                                              </div>
                                              
                                          </div>
                                      
                                      </form>
                                  
                                  </div>
                                  
                                  <div id="infoCompl" class="tab-pane" >
                                      
                                      <form class="form">
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Nivel de estudios</label>
                                                  <div class="col-sm-8">
                                                    <select class="form-control" name="nivelEs">
                                                      <option selected>- Seleccione -</option>
                                                      <option value="1"> Ninguna </option>
                                                      <option value="2"> Educación Básica Primaria </option>
                                                      <option value="3"> Educación Básica Secundaria </option>
                                                      <option value="4"> Educación Básica y Media </option>
                                                      <option value="5"> Educación Técnica </option>
                                                      <option value="6"> Educación Tecnóloga </option>
                                                      <option value="7"> Educación Tecnóloga Especializada </option>
                                                      <option value="8"> Pregrado </option>
                                                      <option value="9"> Especialización </option>
                                                      <option value="10"> Maestria </option>
                                                    </select>
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Labora actualmente</label>
                                                    <div class="radio col-sm-8">
                                                        <select class="form-control" name="infoLab" id="infoLab">
                                                            <option selected>- Seleccione -</option>
                                                            <option value="1" onclick="mostrar()"> Si </option>
                                                            <option value="2" onclick="ocultar()"> No </option>
                                                        </select>
                                                    </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row" id="ocultar1" style="display: none;">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Nombre de la Empresa</label>
                                                  <div class="col-sm-8">
                                                      <input name="nom" id="nom" type="text" class="form-control">
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Dirección de la Empresa</label>
                                                  <div class="col-sm-8">
                                                      <input type="text" class="form-control">
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row" id="ocultar2" style="display: none;">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Telefono de la Empresa</label>
                                                  <div class="col-sm-8">
                                                      <input type="tel" class="form-control">
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Correo de la Empresa</label>
                                                  <div class="col-sm-8">
                                                      <input type="email" class="form-control">
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row" id="ocultar3" style="display: none;">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Cargo</label>
                                                  <div class="col-sm-8">
                                                      <input type="text" class="form-control">
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Tiempo</label>
                                                  <div class="col-sm-8">
                                                      <input type="mes" class="form-control" placeholder="En meses">
                                                  </div>
                                              </div>
                                              
                                          </div>
                                      
                                      </form>
                                  
                                  </div>
                                  
                                  <div id="cargarArch" class="tab-pane">
                                      <form class="form">
                                          <div class="row"> 
                                              
                                          </div>
                                          
                                          <div class="modal-footer">
                                              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                              <a href="listarPreinscripcion.jsp" class="btn btn-info btn-md" name="btnRegistrar" id="btnRegistrar">Registrar</a>
                                          </div>
                                      </form>
                                  </div>
                              </div>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
                                                      
                                                      
                                                      
            
        <div class="modal fade" id="verPreinscrito" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Pre-Inscrito</h4>
                    </div>
                    
                    <div class="modal-body">
                        <form action="" class="form-horizontal row-border">
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Codigó</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Fecha Registro</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Programa</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Nombres</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Apellidos</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Fecha de nacimiento</label>
                                    <div class="col-sm-8">
                                        <input type="date" name="fecha" class="form-control date-time" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Lugar de nacimiento</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Estado civil</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Nacionalidad</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Tipo documento</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Número del Documento</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Dierección</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Barrio</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Telefono Fijo</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Telefono Celular</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Correo</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                        
                        </form>
                    </div>
                    
                    <div class="modal-footer">
                        <div class="btn-block">
                            <button type="button" class="btn btn-default btn-lg" data-dismiss="modal"> Salir </button>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>                  
        
        
        
        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.min.js"></script>        
        <script src="../js/myScript.js"></script>
        <script src="../js/selectCiudad.js"></script>
        <script src="../js/jquery.js"></script>
        <script src="../js/jquery-2.1.0.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/common-script.js"></script>
        <script src="../js/jquery.slimscroll.min.js"></script>
        <script src="../js/jquery.sparkline.js"></script>
        <script src="../js/sparkline-chart.js"></script>
        <script src="../js/graph.js"></script>
        <script src="../js/edit-graph.js"></script>        
        <script src="../plugins/kalendar/kalendar.js" type="text/javascript"></script>
        <script src="../plugins/kalendar/edit-kalendar.js" type="text/javascript"></script>
        <script src="../plugins/sparkline/jquery.sparkline.js" type="text/javascript"></script>
        <script src="../plugins/sparkline/jquery.customSelect.min.js" ></script> 
        <script src="../plugins/sparkline/sparkline-chart.js"></script> 
        <script src="../plugins/sparkline/easy-pie-chart.js"></script>
        <script src="../plugins/morris/morris.min.js" type="text/javascript"></script> 
        <script src="../plugins/morris/raphael-min.js" type="text/javascript"></script>  
        <script src="../plugins/morris/morris-script.js"></script> 
        <script src="../plugins/demo-slider/demo-slider.js"></script>
        <script src="../plugins/knob/jquery.knob.min.js"></script> 
        <script src="../js/jPushMenu.js"></script>        
        <script src="../js/jquery.slimscroll.min.js"></script>
        <script src="../plugins/scroll/jquery.nanoscroller.js"></script>
        
        <script src="../plugins/validation/parsley.min.js"></script>
        
        <script type="text/javascript" src="plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script> 
        
        
        
        <script>
            $(function () {
                $.datepicker.setDefaults($.datepicker.regional["es"]);
                $("#datepicker").datepicker({
                    dateFormat: 'dd/mm/yy',
                    firstDay: 1
                });
            });
        </script>
    </body>
</html>
