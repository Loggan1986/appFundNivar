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
    <link href="../plugins/kalendar/kalendar.css" rel="stylesheet">
    <link rel="stylesheet" href="../plugins/scroll/nanoscroller.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
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
                          <label class="col-sm-4 control-label">Programa</label>
                             <div class="col-sm-8">
                                <select class="form-control" id="source">
                                    <option value="SP">- Seleccione Programa -</option>
                                    <optgroup label="Titulada">
                                          <option value="AK"> Programacion de software </option>
                                          <option value="HI"> Asistencia administrativa </option>
                                          <option value="HI"> Contabilizacion </option>
                                          <option value="HI"> Aux. administrativo </option>
                                    </optgroup>
                        
                                    <optgroup label="Corto">
                                          <option value="AK"> Word </option>
                                          <option value="HI"> Excel </option>
                                          <option value="HI"> Power Point </option>
                                          <option value="HI"> Photoshop </option>
                                    </optgroup>
                        
                                    <optgroup label="Flash">
                                          <option value="AK"> Dreamweaver </option>
                                          <option value="HI"> Css </option>
                                          <option value="HI"> Html </option>
                                          <option value="HI"> Js </option>
                                    </optgroup>
                        
                                    <optgroup label="Otra Categoria">
                                      <option value="OT"> Otro Programa</option>
                                    </optgroup>
                              </select>
                            </div>
                        </div> 
                        
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Otro</label>
                            <div class="col-sm-8">
                                <input type="text" id="otro" class="form-control" placeholder="Cual" disabled>
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
                        </div> </div>
                      
                      <div class="row">
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Fecha de nacimiento</label>
                            <div class="col-sm-8">
                                <input type="date" name="fecha" class="form-control date-time">
                            </div>
                        </div> 
                        
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Lugar de nacimiento</label>
                          <div class="col-sm-8">
                                <select class="form-control" id="source">
                                    <option value="SP">- Seleccione -</option>
                                    <optgroup label="Bolivar">
                                          <option value="AK"> Achí </option>
                                          <option value="HI"> Altos Del Rosario </option>
                                          <option value="HI"> Arenal </option>
                                          <option value="HI"> Arjona </option>
                                          <option value="HI"> Arroyohondo </option>
                                          <option value="HI"> Barranco De Loba </option>
                                          <option value="HI"> Cartagena De Indias </option>
                                          <option value="HI"> Calamar </option>
                                          <option value="HI"> Cantagallo </option>
                                          <option value="HI"> Cicuco </option>
                                          <option value="HI"> Clemencia </option>
                                          <option value="HI"> Córdoba </option>
                                          <option value="HI"> El Carmen </option>
                                          <option value="HI"> El Guamo </option>
                                          <option value="HI"> El Peñon </option>
                                          <option value="HI"> Hatillo De Loba </option>
                                          <option value="HI"> Magangué </option>
                                          <option value="HI"> Mahates </option>
                                          <option value="HI"> Margarita </option>
                                          <option value="HI"> Maria La Baja </option>
                                          <option value="HI"> Montecristo </option>
                                          <option value="HI"> Morales </option>
                                          <option value="HI"> Norosí </option>
                                          <option value="HI"> Pinillos </option>
                                          <option value="HI"> Regidor </option>
                                          <option value="HI"> Rio Viejo </option>
                                          <option value="HI"> San Cristobal </option>
                                          <option value="HI"> San Estanislao </option>
                                          <option value="HI"> San Fernando </option>
                                          <option value="HI"> San Jacinto </option>
                                          <option value="HI"> San Jacinto Del Cauca </option>
                                          <option value="HI"> San Juan Nepomuceno </option>
                                          <option value="HI"> San Martín De Loba </option>
                                          <option value="HI"> San Pablo </option>
                                          <option value="HI"> Santa Catalina </option>
                                          <option value="HI"> Santa Cruz de Mompox </option>
                                          <option value="HI"> Santa Rosa De Lima </option>
                                          <option value="HI"> Santa Rosa del sur </option>
                                          <option value="HI"> Simití </option>
                                          <option value="HI"> Soplaviento </option>
                                          <option value="HI"> Talaigua Nuevo </option>
                                          <option value="HI"> Tiquisio </option>
                                          <option value="HI"> Turbana </option>
                                          <option value="HI"> Villanueva </option>
                                          <option value="HI"> Zambrano </option>
                                    </optgroup>
                                </select>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
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
                      </div>
                      
                      <div class="row">
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Nacionalidad</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="Nacionalidad">
                          </div>
                        </div>
                        
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Tipo documento</label>
                              <div class="col-md-8">
                                  <select class="form-control" id="">
                                <option value="">- Seleccione -</option>
                                <option value="CI"> Cedula de Identidad </option>
                                <option value="CC"> Cedula de Ciudadania </option>
                                <option value="TI"> Tarjeta de Identidad </option>
                                <option value="RC"> Registro Civil </option>
                                <option value="CE"> Cedula de Extranjeria </option>
                                <option value="CI2"> Carnet de Identidad </option>
                                <option value="DNI"> Documento Nacional de Identidad </option>
                                <option value="DUI"> Documento Único de Identidad </option>
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
                                    <label for="radio1">
                                        <input type="radio" name="labor1" value="si" id="empresa">Si<br>
                                        <input type="radio" name="labor2" value="no">No
                                    </label>                                  
                                  </div>
                              </div>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <label class="col-sm-4 control-label">Nombre de la Empresa</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" disabled>
                              </div>
                        </div>
                      </div>

                  		<div class="row">
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Dirección de la Empresa</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" disabled>
                            </div>
                        </div>
                        
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Telefono de la Empresa</label>
                            <div class="col-sm-8">
                                <input type="tel" class="form-control" disabled>
                            </div>
                        </div>
                      </div>

                  		<div class="row">
                        <div class="form-group col-md-6">
                          <label class="col-sm-4 control-label">Correo de la Empresa</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" disabled>
                            </div>
                        </div>
                        
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

                      <br>
                      <br>


                    

                    </form>
                            <div class="container">
                                <div class="row">
                                  <div class="col-md-12 pull-left">
                                    <a href="#regpreins" class="btn btn-info btn-lg" data-toggle="modal">Actualizar</a>
                                  </div>
                                </div>
                            </div>
            </div>
                        </div>
                    </div>
                </div>
      </div>

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