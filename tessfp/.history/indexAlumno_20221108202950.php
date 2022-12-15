<?php
    session_start();
    if ($_SESSION['Alumno']=="") 
    {
        echo "<script>window.location='index.html';</script>";
    }
    else
    {
        $usuario=$_SESSION['Alumno'];
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/alertify.core.css" rel="stylesheet" type="text/css">
    <link href="css/alertify.default.css" rel="stylesheet" type="text/css">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/funciones.js" type="text/javascript"></script>
    <script src="js/alertify.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">

</head>

<body>
    
    <br>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="Nav">
            <a class="navbar-brand" href="#">SGTII-TESSFP</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span></button>
            <!--apartado menu-->
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <a class="nav-link" href="#" id="menuInicioAlumno" style="color: white;">
                    <span class="fas fa-home"></span> Inicio</a>
                    
                    <a class="nav-link" href="#" id="cerrarSesion" style="color: white;">
                    <span class="fas fa-sign-out-alt"></span> Cerrar Sesión "<?php echo $usuario;?>"</a>
                </ul>
            </div>
            <!--Fin Menu-->
        </nav>
        <div class="row" id="divInicioAlumno">
            <div class="col-12" style="text-align: center;">
                <br>
                <h1 class="animate__animated animate__backInLeft"><font color="Black" size="7" >
                    <b>Bienvenido(a) <?php echo $usuario;?> </b></font></h1>
                
                <br>
                <img src="img/logo.png" alt="" >
            </div>
        </div>
        <div class="row" id="divTrabajosAlumno" style="display: none;">
            <div class="col-12" style="text-align: center;">
            <p><font color="Black" size="7" ><b>Trabajos</b></font></p>
            </div>
            <div class="col-2"></div>
            <div class="col-12" style="text-align: center;" id="mostrarTrabajosAlumno"></div>
        </div>

    </div>
</body>
</html>