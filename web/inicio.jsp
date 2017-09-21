<%-- 
    Document   : inicio
    Created on : 26/08/2017, 03:16:01 PM
    Author     : JhonjosArpie30
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Inicio</title>
	<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/animate.css" rel="stylesheet" type="text/css" />
	<link href="css/admin.css" rel="stylesheet" type="text/css" />
	<link href="plugins/calendar/fullcalendar.css" rel="stylesheet" type="text/css" />
	<link href="plugins/calendar/fullcalendar.print.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="panel">
					<div id='external-events'>
						<div class="fc-heading">
							<h5>Eventos</h5>
						</div>
						<div class="fc-body">
							<div class='external-event'>Pre-Inscripciones</div>
							<div class='external-event'>Inscripciones</div>
							<div class='external-event'>Matriculaciones</div>
							<div class='external-event'>Parciales</div>
							<div class='external-event'>Conferencia</div>
							<div class='external-event'>Diplomado</div>
							<div class='external-event'>Reunion Docentes</div>
							<div class='external-event'>Reunion Directiva</div>
							<div class='external-event'>Conferencia</div>
							<p>
								<input type='checkbox' id='drop-remove' /> <label for='drop-remove'>Eliminar al finalizar</label>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-10">
				<div class="block-web">
					<div id='calendar'></div>
				</div>
			</div>
		</div>
	</div>




	<script src="js/jquery-2.1.0.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/common-script.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<script src="js/jquery-ui.custom.min.js"></script>
	<script src="plugins/calendar/fullcalendar.min.js"></script>
	<script src="plugins/calendar/external-draging-calendar.js"></script>
	<script src="js/jPushMenu.js"></script> 
	<script src="js/side-chats.js"></script>
</body>
</html>
