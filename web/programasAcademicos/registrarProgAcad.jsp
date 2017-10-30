<%-- 
    Document   : registrarProgAcad
    Created on : 21/10/2017, 12:02:21 PM
    Author     : JhonjosArpie30
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programas Académicos</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/animate.css" rel="stylesheet" type="text/css" />
        <link href="../css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../plugins/scroll/nanoscroller.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>
        
        <div class="container">
            <div class="row">
                <div class="col-md-6">
          <div class="block-web">
            <div class="header">
              <div class="actions"> <a class="minimize" href="#"><i class="fa fa-chevron-down"></i></a><a class="close-down" href="#"><i class="fa fa-times"></i></a> </div>
              <h3 class="content-header">Basic Form</h3>
            </div>
            <div class="porlets-content">
              <form action="#" parsley-validate novalidate>
                <div class="form-group">
                  <label>User Name</label>
                  <input type="text" name="nick" parsley-trigger="change" required placeholder="Enter user name" class="form-control">
                </div><!--/form-group-->
                <div class="form-group">
                  <label>Email address</label>
                  <input type="email" name="email" parsley-trigger="change" required placeholder="Enter email" class="form-control">
                </div><!--/form-group-->
                <div class="form-group">
                  <label>Password</label>
                  <input id="pass1" type="password" placeholder="Password" required class="form-control">
                </div><!--/form-group-->
                <div class="form-group">
                  <label>Repeat Password</label>
                  <input parsley-equalto="#pass1" type="password" required placeholder="Password" class="form-control">
                </div><!--/form-group-->
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="remember">
                    Remember me </label>
                </div><!--/checkbox-->
                <button class="btn btn-primary" type="submit">Submit</button>
                <button class="btn btn-default">Cancel</button>
              </form>
            </div><!--/porlets-content-->
          </div><!--/block-web--> 
        </div><!--/col-md-6-->
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
        
        <script src="../plugins/validation/parsley.min.js"></script>
    </body>
</html>
