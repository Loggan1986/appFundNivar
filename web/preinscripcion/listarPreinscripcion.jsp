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
    </head>
    <body>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12" align="center">
                    <h2>Pre-Inscripciones  -  Lista</h2>
                </div>
                <br>                
                <div class="row">
                    <div class="col-md-12 col-md-offset-11">
                        <a href="crearPreinscripcion.jsp" class="btn btn-info">
                            <span class="glyphicon glyphicon-plus-sign"></span>
                        </a>
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
        


        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>
