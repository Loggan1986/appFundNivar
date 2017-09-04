<%-- 
    Document   : crearPreinscripcion
    Created on : 25/08/2017, 03:37:13 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Pre-Inscripcion</title>
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
        document.getElementById('ocultar4').style.display = 'block';}
    
        function ocultar(){
        document.getElementById('ocultar1').style.display = 'none';
        document.getElementById('ocultar2').style.display = 'none';
        document.getElementById('ocultar3').style.display = 'none';
        document.getElementById('ocultar4').style.display = 'none';}
    </script>
<body>	
      <div class="container">     
            <div class="row">
                <div class="col-md-12">
                    <div class="block-web">

                        <div class="header">
                          <div class="actions"> <a class="minimize" href="#"><i class="fa fa-chevron-down"></i></a><a class="close-down" href="#"><i class="fa fa-times"></i></a> </div>
                          <h1 class="content-header" align="center"> Formulario </h1>
                        </div>
                        <br>
                        <div class="porlets-content">

                          <form action="" class="form-horizontal row-border">

                            <div class="row">
                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Codigó</label>
                                  <div class="col-sm-8">
                                      <input type="text" class="form-control" placeholder="codigo de registro" disabled>
                                  </div>
                              </div>


                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Fecha Registro</label>
                                  <div class="col-sm-8">
                                      <input type="password" class="form-control" placeholder="fecha de registro" disabled>
                                  </div>
                              </div> 
                            </div>


                            <div class="row">
                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Tipo De Estudio</label>
                                   <div class="col-sm-8">
                                       <select class="form-control" id="tprog1" name="tprog1" onchange="populate(this.id,'nprog2')">
                                          <option active>- Seleccione -</option>
                                          <optgroup label="">
                                                <option value="TIT">Titulada </option>
                                                <option value="COR"> Corto </option>
                                                <option value="FLA"> Flash </option>
                                                <option value="OTR"> Otro </option>
                                          </optgroup>
                                    </select>
                                  </div>
                              </div> 

                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Nombre Del Programa</label>
                                  <div class="col-sm-8">
                                      <select name="nprog2" id="nprog2" class="form-control"></select>
                                  </div>
                              </div>
                            </div>

                            <div class="row">
                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Nombres</label>
                                  <div class="col-sm-8">
                                      <input type="text" class="form-control" placeholder="Nombres del aspirante">
                                  </div>
                              </div>

                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Apellidos</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" placeholder="Apellidos del aspirante">
                                </div>
                              </div> 
                            </div>

                            <div class="row">
                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Fecha de nacimiento</label>
                                  <div class="col-sm-8">
                                      <input type="date" name="cumpleaños" step="1" min="1960-01-01" max="2002-01-01" class="form-control date-time">
                                  </div>
                              </div>
                                
                               <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Genero</label>
                                    <div class="radio col-md-8">
                                        <div class="">
                                          <label for="radio1">
                                              <input type="radio" name="genero1" value="Masculino">Masculino <br>
                                              <input type="radio" name="genero2" value="Femenino">Femenino
                                          </label>                                  
                                        </div>
                                    </div>
                              </div>                              
                              
                            </div>

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
                                        <select class="form-control" id="mun2" name="mun2"></select>
                                    </div>
                              </div>

                              
                             </div>

                            <div class="row">
                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Estado civil</label>
                                  <div class="col-sm-8">
                                    <select class="form-control" id="">
                                      <option value="">- Seleccione -</option>
                                      <option value=""> Soltero/a </option>
                                      <option value=""> Casado/a </option>
                                      <option value=""> Divorsiado/a </option>
                                      <option value=""> Union Libre </option>
                                      <option value=""> Viudo/a </option>
                                    </select>
                                  </div>
                              </div>

                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Tipo documento</label>
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
                            </div>

                            <div class="row">
                              <div class="form-group col-md-6">
                                  <label class="col-sm-4 control-label">Número del Documento</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" placeholder="N° Documento">
                                    </div>
                              </div> 

                              <div class="form-group col-md-6">
                                <label class="col-sm-4 control-label">Dierección</label>
                                  <div class="col-sm-8">
                                      <input type="text" class="form-control" placeholder="Nomenclatura">
                                  </div>
                              </div>
                            </div>

                              <div class="row">
                                <div class="form-group col-md-6">
                                  <label class="col-sm-4 control-label">Barrio</label>
                                    <div class="col-sm-8">
                                        <input type="email" class="form-control" placeholder="Localidad">
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Telefono Fijo</label>
                                      <div class="col-sm-8">
                                          <input type="tel" class="form-control" placeholder="000-000-00-00">
                                      </div>
                                </div>
                              </div>

                              <div class="row">
                                  <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Telefono Celular</label>
                                      <div class="col-sm-8">
                                          <input type="tel" class="form-control" placeholder="000-000-00-00">
                                      </div>
                                  </div>

                                  <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Correo</label>
                                      <div class="col-sm-8">
                                          <input type="email" class="form-control" placeholder="Ejemplo@dominio.com">
                                      </div>
                                  </div>
                                </div>

                              <div class="row">
                                  <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Labora actualmente</label>
                                        <div class="radio col-sm-8">
                                            <div class="">
                                              <label for="checkbox1">
                                                  <input type="checkbox" name="labor1" value="si" onclick="mostrar()">Si<br>
                                                  <input type="checkbox" name="labor2" value="no" onclick="ocultar()" >No
                                              </label>                                  
                                            </div>
                                        </div>
                                  </div>

                                  <div class="form-group col-md-6" id="ocultar1" style="display: none;">
                                      <label class="col-sm-4 control-label">Nombre de la Empresa</label>
                                        <div class="col-sm-8">
                                            <input name="nom" id="nom" type="text" class="form-control">
                                        </div>
                                  </div>
                              </div>

                              <div class="row" id="ocultar2" style="display: none;">
                                  <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Dirección de la Empresa</label>
                                      <div class="col-sm-8">
                                          <input type="text" class="form-control">
                                      </div>
                                  </div>

                                  <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Telefono de la Empresa</label>
                                      <div class="col-sm-8">
                                          <input type="tel" class="form-control">
                                      </div>
                                  </div>
                              </div>

                              <div class="row">
                                  <div class="form-group col-md-6" id="ocultar3" style="display: none;">
                                    <label class="col-sm-4 control-label">Correo de la Empresa</label>
                                      <div class="col-sm-8">
                                          <input type="email" class="form-control">
                                      </div>
                                  </div>
                                  
                                  <div class="form-group col-md-6" id="ocultar4" style="display: none;">
                                      <label class="col-sm-4 control-label">Cargo</label>
                                      <div class="col-sm-8">
                                          <input type="text" class="form-control">
                                      </div>
                                  </div>
                                  
                              </div>
                              
                              <div class="row">
                                  <div class="form-group col-md-6">
                                    <label class="col-sm-4 control-label">Nivel de estudios</label>
                                        <div class="col-md-8">
                                            <select class="form-control" id="">
                                              <option value="">- Seleccione -</option>
                                              <option value="CI"> Opcion #1 </option>
                                              <option value="CC"> Opcion #2 </option>
                                              <option value="TI"> Opcion #3 </option>
                                              <option value="RC"> Opcion #4 </option>
                                              <option value="CE"> Opcion #5 </option>
                                              <option value="CI2"> Opcion #6 </option>
                                              <option value="DNI"> Opcion #7 </option>
                                              <option value="DUI"> Opcion #8 </option>
                                            </select>                                        
                                        </div>
                                  </div>
                              </div>
                              
                              
                          </form>  
                            <br>
                            <div class="row">
                                <div class="panel col-md-6">
                                  <div class="panel-body">
                                    <!-- Button trigger modal -->
                                    <button data-target="#mensaje1" data-toggle="modal" class="btn btn-primary btn-lg mb10"> Registrar </button>
                                  </div>
                                </div>
                            </div>
                                                
                            <div class="modal fade" id="mensaje1" tabindex="-1" role="dialog" aria-labelledby="mensaje1Label" aria-hidden="true">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                      <h4 class="modal-title" id="myModalLabel" align="center">Nuevo Ingreso</h4>
                                    </div>
                                    <div class="modal-body" align="justify"> La información ingresada sera almacenada en nuestra base de datos, para continuar al proceso de 
                                        <strong>Inscripción</strong> debera cancelar la Pre-Inscripción si el programa lo amerita.
                                    </div>
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-warning" data-dismiss="modal">Cancelar</button>
                                      <button type="button" class="btn btn-primary" data-target="#mensaje2" data-toggle="modal">Guardar</button>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        
                            <div class="modal fade" id="mensaje2" tabindex="-1" role="dialog" aria-labelledby="mensaje2Label" aria-hidden="true">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                      <h4 class="modal-title" id="myModalLabel" align="center">Mensaje</h4>
                                    </div>
                                    <div class="modal-body" align="justify">Se han guardado todos los datos con exito.</div>
                                    <div class="modal-footer">
                                      <a href="listarPreinscripcion.jsp" type="button" class="btn btn-primary">Aceptar</a>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
      </div>

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
    <script src="../js/side-chats.js"></script>
    <script src="../js/jquery.slimscroll.min.js"></script>
    <script src="../plugins/scroll/jquery.nanoscroller.js"></script>
</body>
</html>