<%-- 
    Document   : listarPreinscripcion
    Created on : 31/08/2017, 04:45:42 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listas - Preinscripciones</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/animate.css" rel="stylesheet" type="text/css" />
        <link href="../css/admin.css" rel="stylesheet" type="text/css" />
        <link href="../css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../plugins/scroll/nanoscroller.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
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
                    <h2>Pre-Inscripciones  -  Lista</h2>
                </div>
                <br>                
                <div class="row">
                    <div class="col-md-12 col-md-offset-11">
                        <button class="btn btn-info btn-lg" data-toggle="modal" data-target="#crearPreinscripcion" title="Nuevo PreInscripcion">
                            <i class="glyphicon glyphicon-plus"></i>
                        </button>
                    </div>
                </div>
                
                <br>
                
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-condensed">
                            <tr class="active info">
                                <th>Código</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Programa</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                            <tr>
                                <td>AFD456</td>
                                <td>juan Camilo</td>
                                <td>Perez Zuñiga</td>
                                <td>Administración de empresas</td>
                                <td>Desechado</td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <a href="verPreinscrito.jsp" class="btn btn-success">
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
                            <tr>
                                <td>FHY645</td>
                                <td>Liliana </td>
                                <td>Carreazo Perez</td>
                                <td>Ingenieria Industrial</td>
                                <td>Preinscrito</td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <a href="verPreinscrito.jsp" class="btn btn-success">
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
                            <tr>
                                <td>ITY746</td>
                                <td>Pedro Jose</td>
                                <td>Silvestre Cuña</td>
                                <td>Programacion de software</td>
                                <td>En proceso</td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <a href="verPreinscrito.jsp" class="btn btn-success">
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
                            <tr>
                                <td>WRF409</td>
                                <td>Karen Luna</td>
                                <td>Arrollabe Quins</td>
                                <td>Secretariado Ejecutivo</td>
                                <td>Incompleto</td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <a href="verPreinscrito.jsp" class="btn btn-success">
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
                        </table>
                    </div>
                </div>

            </div>
        </div>
        
        <div class="modal fade" id="crearPreinscripcion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
          <div class="modal-dialog modal-lg">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title" id="myModalLabel">Registrar Nueva Pre-Inscripción</h4>
                  </div>
                  
                  <!--Inicio del Modal Body-->
                  <div class="modal-body">
                      <div class="porlets-content">
                          <div class="basic-wizard" id="progressWizard">
                              <ul class="nav nav-pills nav-justified">
                                  <li class="active"><a data-toggle="tab" href="#infoBasic"><span>1:</span> Información Basica</a></li>
                                  <li><a data-toggle="tab" href="#infoPers"><span>2:</span> Información Personal</a></li>
                                  <li><a data-toggle="tab" href="#infoCompl"><span>3:</span> Información Complementaria</a></li>
                              </ul>
                              
                              <br><br>
                              
                              <div class="tab-content">
                                  <div id="infoBasic" class="tab-pane active">
                                      <form class="form">
                                          
                                          <div class="row">
                                              <div class="col-sm-6">
                                                  <div class="form-group">
                                                      <label class="col-sm-4">Código</label>
                                                      <div class="col-sm-8">
                                                          <input type="generarCodigo" class="form-control" name="codigo" disabled="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="col-sm-6">
                                                  <div class="form-group">
                                                      <label class="col-sm-4">Fecha de registro</label>
                                                      <div class="col-sm-8">
                                                          <input type="date-local" class="form-control" name="fechareg" disabled="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Tipo De Estudio</label>
                                                  <div class="col-sm-8">
                                                      <select class="form-control" id="tprog1" name="tprog1" onchange="populate(this.id,'nprog2')">
                                                          <option active>- Seleccione -</option>
                                                          <option value="TIT">Titulada </option>
                                                          <option value="COR"> Corto </option>
                                                          <option value="FLA"> Flash </option>
                                                          <option value="OTR"> Otro </option>
                                                      </select>
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Nombre Del Programa</label>
                                                  <div class="col-sm-8">
                                                      <select name="nprog2" id="nprog2" class="form-control">
                                                          <option active>- Seleccione -</option>
                                                      </select>
                                                  </div>
                                              </div>
                                              
                                          </div>
                                      
                                      </form>
                                  
                                  </div>
                                  
                                  <div id="infoPers" class="tab-pane">
                                      
                                      <form class="form">
                                          
                                          <div class="row">
                                              
                                              <div class="col-sm-6">
                                                  <div class="form-group">
                                                      <label class="col-sm-4">Nombres</label>
                                                      <div class="col-sm-8">
                                                          <input type="text" class="form-control" name="codigo">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="col-sm-6">
                                                  <div class="form-group">
                                                      <label class="col-sm-4">Apellidos</label>
                                                      <div class="col-sm-8">
                                                          <input type="text" class="form-control" name="lastname">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Fecha de nacimiento</label>
                                                  <div class="col-sm-8">
                                                      <input type="date" name="cumpleaños" step="1" min="1960-01-01" max="2002-01-01" class="form-control date-time">
                                                  </div>
                                              </div>
                                              
                                              <div class="col-sm-6">
                                                  <div class="form-group">
                                                      <label class="col-sm-4 control-label">Genero</label>
                                                      <div class="radio col-md-8">
                                                          <label for="checkbox2">
                                                              <input type="checkbox" name="genero1" value="Masculino"> Masculino <br>
                                                              <input type="checkbox" name="genero2" value="Femenino"> Femenino
                                                          </label>
                                                      </div>
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Lugar de nacimiento</label>
                                                  <div class="col-sm-8">
                                                      <select class="form-control" id="dep1" name="dep1" onchange="departament(this.id,'mun2')">
                                                            <option value="">- Departamento -</option>
                                                            <option value="guajira"> Guajira </option>
                                                            <option value="atlantico"> Atlántico </option>
                                                            <option value="magdalena"> Magdalena </option>
                                                            <option value="cesar"> Cesar </option>
                                                            <option value="sucre"> Sucre </option>
                                                            <option value="bolivar"> Bolívar </option>
                                                            <option value="cordoba"> Cordoba </option>
                                                            <option value="nortedesantander"> Norte De Santander </option>
                                                            <option value="antioquia"> Antioquia </option>
                                                            <option value="santander"> Santander </option>
                                                            <option value="arauca"> Arauca </option>
                                                            <option value="choco"> Chocó </option>
                                                            <option value="caldas"> Caldas </option>
                                                            <option value="boyaca"> Boyacá </option>
                                                            <option value="casanare"> Casanare </option>
                                                            <option value="risaralda"> Risaralda </option>
                                                            <option value="cundinamarca"> Cundinamarca </option>
                                                            <option value="quindio"> Quindio </option>
                                                            <option value="tolima"> Tolima </option>
                                                            <option value="valle"> Valle </option>
                                                            <option value="huila"> Huila </option>
                                                            <option value="cauca"> Cauca </option>
                                                            <option value="nariño"> Nariño </option>
                                                            <option value="putumayo"> Putumayo </option>
                                                            <option value="caqueta"> Caquetá </option>
                                                            <option value="meta"> Meta </option>
                                                            <option value="vichada"> Vichada </option>
                                                            <option value="guaviare"> Guaviare </option>
                                                            <option value="guainia"> Guainía </option>
                                                            <option value="vaupes"> Vaupés </option>
                                                            <option value="amazonas"> Amazonas </option>
                                                            <option value="sanandres"> San Andrés y Providencia </option>
                                                            <option value="bogota"> Bogotá </option>
                                                      </select>
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Municipio o Corregimiento</label>
                                                  <div class="col-sm-8">
                                                      <select class="form-control" id="mun2" name="mun2">
                                                          <option active>- Municipio/Corregimiento -</option>
                                                      </select>
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                <label class="col-sm-4 control-label">Tipo identificación</label>
                                                  <div class="col-md-8">
                                                    <select class="form-control" id="">
                                                      <option value="">- Seleccione -</option>
                                                      <option value="CC"> Cedula de Ciudadania </option>
                                                      <option value="TI"> Tarjeta de Identidad </option>
                                                      <option value="RC"> Registro Civil </option>
                                                      <option value="CE"> Cedula de Extranjeria </option>
                                                      <option value="PA"> Pasaporte </option>
                                                    </select>                                        
                                                  </div>
                                              </div>
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Número del Documento</label>
                                                  <div class="col-sm-8">
                                                      <input type="text" class="form-control" placeholder="N° Documento">
                                                  </div>
                                              </div>
                                          
                                          </div>
                                          
                                          <br>
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Dierección</label>
                                                  <div class="col-sm-8">
                                                      <input type="text" class="form-control" placeholder="Nomenclatura">
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Localidad</label>
                                                  <div class="col-sm-8">
                                                      <input type="email" class="form-control" placeholder="Barrio">
                                                  </div>
                                              </div>
                                          
                                          </div>
                                      
                                      </form>
                                  
                                  </div>
                                  
                                  <div id="infoCompl" class="tab-pane" >
                                      
                                      <form action="form">
                                          
                                          <div class="row">
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Nivel de estudios</label>
                                                  <div class="col-sm-8">
                                                    <select class="form-control">
                                                      <option value="">- Seleccione -</option>
                                                      <option value="NIN"> Ninguna </option>
                                                      <option value="BAS"> Básica </option>
                                                      <option value="MED"> Media </option>
                                                      <option value="TEP"> Técnico Profesional </option>
                                                      <option value="TEG"> Tecnólogo </option>
                                                      <option value="PRO"> Profesional </option>
                                                      <option value="ESP"> Especialización </option>
                                                      <option value="MAS"> Maestria </option>
                                                      <option value="DOC"> Doctorado </option>
                                                    </select>
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group col-md-6">
                                                  <label class="col-sm-4 control-label">Labora actualmente</label>
                                                    <div class="radio col-sm-8">                              
                                                      <label for="checkbox1">
                                                        <input type="checkbox" name="labor1" value="si" onclick="mostrar()"> Si<br>
                                                        <input type="checkbox" name="labor2" value="no" onclick="ocultar()"> No
                                                      </label>                       
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
                              
                              </div>
                          
                          </div>
                      
                      </div>
                  
                  </div>
                  
                  <br><br>
                  
                  <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                      <a href="listarPreinscripcion.jsp" class="btn btn-info btn-md">Registrar</a>
                  </div>
              
              </div>
          </div>
      </div>
        
        
        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.min.js"></script>        
        <script src="../js/myScript.js"></script>
        <script src="../js/depmun.js"></script>
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
    </body>
</html>
