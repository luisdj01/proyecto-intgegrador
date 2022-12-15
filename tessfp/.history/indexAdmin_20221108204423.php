<?php
    session_start();
    if ($_SESSION['administrador']=="") 
    {
        echo "<script>window.location='index.html';</script>";
    }
    else
    {
        $usuario=$_SESSION['administrador'];

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
</script>
<style>
    body{
        background:url(img/fondo_admin.jpg);
        background-repeat: no-repeat;
        background-size: cover; 
    }
</style>
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
                    <a class="nav-link" href="#" id="menuInicio" style="color: white;">
                    <span class="fas fa-home"></span>Inicio</a>
                    <li class="nav-item dropdown" >
                        <a class="nav-link dropdown-toggle" href="" data-toggle="dropdown" style="color: white;">
                            <span class="fas fa-user-graduate"></span> Alumnos
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#" id="menuAgregarAlumno"><span class="fas fa-user-plus"></span> Agregar</a>
                            <a class="dropdown-item" href="#" id="menuMostrarAlumno"><span class="fas fa-table"></span> Mostrar</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" >
                        <a class="nav-link dropdown-toggle" href="" data-toggle="dropdown" style="color: white;">
                            <span class="fas fa-chalkboard-teacher"></span> Asesor
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#" id="menuAgregarAsesor"><span class="fas fa-user-plus"></span> Agregar</a>
                            <a class="dropdown-item" href="#" id="menuMostrarAsesor"><span class="fas fa-table"></span> Mostrar</a>
                        </div>
                    </li>
                    <a class="nav-link" href="#" id="menuUsuarios" style="color: white;">
                    <span class="fas fa-users"></span>Usuarios</a>
                    <li class="nav-item dropdown" >
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" style="color: white;">
                            <span class="fas fa-money-check-alt"></span>Trabajos
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropDownMenuLink">
                            <a class="dropdown-item" href="#" id="menuRegistrarTrabajo"> <span class="fas fa-cash-register"></span>Registrar</a>
                            <a class="dropdown-item" href="#" id="menuConsultarTrabajo"><span class="fas fa-table"></span>Consultar</a>
                        </div>
                    </li>
                    <a class="nav-link" href="#" id="cerrarSesion" style="color: white;">
                    <span class="fas fa-sign-out-alt"></span> Cerrar Sesion "<?php echo $usuario;?>"</a>
                </ul>
            </div>
            <!--Fin Menu-->
        </nav>
        <br>
        <div class="row" id="divInicio">
            <div class="col-12" style="text-align: center;">
                <br>
                <h1 class="animate__animated animate__backInLeft"><font color="black" size="7" >
                    <b>Bienvenido: <?php echo $usuario;?> </b></font></h1>
                <br>
                <img src="img/logo.png" alt="" >
            </div>
        </div>

        <div class="row" id="divAgregarAlumno" style="display: none;">
            <div class="col-12" style="text-align: center;">
                <br>
                <h1 class="animate__animated animate__backInLeft"><font color="black" size="7" >
                <b>REGISTRO DE ALUMNOS</b></font></h1>
            </div>
            <div class="col-12">
                <form class="row g-3 needs-validation" novalidate>
                    
                    <div class="col-md-6">
                        <label for="txtNoCuenta">No. de Cuenta</label>
                        <input type="text" class="form-control" id="txtNoCuenta" placeholder="No. de Cuenta" required>
                        <div class="invalid-feedback">El numero de cuenta es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtPasswordAlumno">Contraseña</label>
                        <input type="password" class="form-control" id="txtPasswordAlumno" placeholder="Contraseña" required>
                        <div class="invalid-feedback">La contraseña es nesesaria</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtNombreAlumno">Nombre del Alumno</label>
                        <input type="text" class="form-control" id="txtNombreAlumno" placeholder="Nombre del Alumno" required>
                        <div class="invalid-feedback">El nombre alumno es nesesario</div>
                    </div>
                    
                    <div class="col-md-6">
                        <label for="txtAPAlumno">Apellido Paterno del alumno</label>
                        <input type="text" class="form-control" id="txtAPAlumno" placeholder="Apellido Paterno" required>
                        <div class="invalid-feedback">El apellido paterno del alumno es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtAMAlumno">Apellido Materno del alumno</label>
                        <input type="text" class="form-control" id="txtAMAlumno" placeholder="Apellido Materno" required>
                        <div class="invalid-feedback">El apellido materno del alumno es nesesario</div>
                    </div>
                    <div class="form-group col-6">
                        <label for="SelectGeneroAlumno">Genero</label>
                        <select id="SelectGeneroAlumno" class="custom-select" placeholder="Seleccionar..." required> 
                            <option>Seleccionar...</option>
                            <option>F</option>
                            <option>M</option>
                        </select>
                        <div class="invalid-feedback">El genero del alumno es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtTelAlumno">Telefono del alumno</label>
                        <input type="number" class="form-control" id="txtTelAlumno" placeholder="Teléfono Alumno" required>
                        <div class="invalid-feedback">El Teléfono del alumno es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtEmailAlumno">E-mail del alumno</label>
                        <input type="text" class="form-control" id="txtEmailAlumno" placeholder="E-mail Alumno" required>
                        <div class="invalid-feedback">El email del alumno es nesesario</div>
                    </div>
                    <div class="col-12 text-center">
                        <br>
                        <br>
                        <button type="submit" class='btn btn-success' id='btnRegistrarAlumno'>
                        <i class="fas fa-save"></i> Registrar Alumno</button>
                    </div>
                    </form>
            </div>
        </div>
        <!--Modal Editar Alumno-->
        <div class="modal fade" id="ModalEditarAlumno" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content bg-white">
                <div class="modal-header">
                    <h5 class="modal-title" style="text-align: center;" id="exampleModalLabel">Editar Alumno</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-white">
                    <form class="row g-3 needs-validation" novalidate>
                    <div class="col-md-6">
                        <label for="">Id Alumno</label>
                        <input type="text" class="form-control" id="txtModalIdAlumno" placeholder="id alumno" required>
                        <input type="hidden" class="form-control" id="txtModalIdUsuarioUpdate" placeholder="id alumno" required>
                        <div class="invalid-feedback">El Id es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">No. de Cuenta</label>
                        <input type="text" class="form-control" id="txtModalNoCuenta" placeholder="No. de Cuenta" required>
                        <div class="invalid-feedback">El numero de cuenta es nesesario</div>
                        <input type="hidden" class="form-control" id="txtModalNoCuentaUsuarioUpdate" placeholder="No. de Cuenta Usuario" required>
                    </div>
                    <div class="col-md-6">
                        <label for="">Nombre del Alumno</label>
                        <input type="text" class="form-control" id="txtModalNombreAlumno" placeholder="Nombre del Alumno" required>
                        <div class="invalid-feedback">El nombre alumno es nesesario</div>
                    </div>
                    
                    <div class="col-md-6">
                        <label for="">Apellido Paterno del alumno</label>
                        <input type="text" class="form-control" id="txtModalAPAlumno" placeholder="Apellido Paterno" required>
                        <div class="invalid-feedback">El apellido paterno del alumno es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">Apellido Materno del alumno</label>
                        <input type="text" class="form-control" id="txtModalAMAlumno" placeholder="Apellido Materno" required>
                        <div class="invalid-feedback">El apellido materno del alumno es nesesario</div>
                    </div>
                    <div class="form-group col-6">
                        <label for="">Genero</label>
                        <select id="SelectModalGeneroAlumno" class="custom-select" placeholder="Seleccionar..." required> 
                            <option>Seleccionar...</option>
                            <option>F</option>
                            <option>M</option>
                        </select>
                        <div class="invalid-feedback">El genero del alumno es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">Telefono del alumno</label>
                        <input type="number" class="form-control" id="txtModalTelAlumno" placeholder="Teléfono Alumno" required>
                        <div class="invalid-feedback">El Teléfono del alumno es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">E-mail del alumno</label>
                        <input type="text" class="form-control" id="txtModalEmailAlumno" placeholder="E-mail Alumno" required>
                        <div class="invalid-feedback">El email del alumno es nesesario</div>
                    </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <button type="button" class="btn btn-primary" id='btnModalEditarAlumno' 
                    data-dismiss="modal"><i class='far fa-edit'></i> Actualizar Información</button>
                </div>
                </div>
            </div>
        </div>

        <div class="row" id="divAgregarAsesor" style="display: none;">
            <div class="col-12" style="text-align: center;">
                <br>
                <h1 class="animate__animated animate__backInLeft"><font color="black" size="7" >
                <b>REGISTRO DE ASESORES</b></font></h1>
            </div>
            <div class="col-12">
                <form class="row g-3 needs-validation" novalidate>
                    
                    <div class="col-md-6">
                        <label for="txtClave">Clave</label>
                        <input type="text" class="form-control" id="txtClave" placeholder="Clave" required>
                        <div class="invalid-feedback">La Clave es nesesaria</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtPasswordAsesor">Contraseña</label>
                        <input type="password" class="form-control" id="txtPasswordAsesor" placeholder="Contraseña" required>
                        <div class="invalid-feedback">La contraseña es nesesaria</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtNombreAsesor">Nombre del Asesor</label>
                        <input type="text" class="form-control" id="txtNombreAsesor" placeholder="Nombre del Asesor" required>
                        <div class="invalid-feedback">El nombre Asesor es nesesario</div>
                    </div>
                    
                    <div class="col-md-6">
                        <label for="txtAPAsesor">Apellido Paterno del Asesor</label>
                        <input type="text" class="form-control" id="txtAPAsesor" placeholder="Apellido Paterno" required>
                        <div class="invalid-feedback">El apellido paterno del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtAMAsesor">Apellido Materno del Asesor</label>
                        <input type="text" class="form-control" id="txtAMAsesor" placeholder="Apellido Materno" required>
                        <div class="invalid-feedback">El apellido materno del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtTelAsesor">Telefono del Asesor</label>
                        <input type="number" class="form-control" id="txtTelAsesor" placeholder="Teléfono Asesor" required>
                        <div class="invalid-feedback">El Teléfono del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtEmailAsesor">E-mail del Asesor</label>
                        <input type="text" class="form-control" id="txtEmailAsesor" placeholder="E-mail Asesor" required>
                        <div class="invalid-feedback">El email del Asesor es nesesario</div>
                    </div>
                    <div class="col-12 text-center">
                        <br>
                        <br>
                        <button type="submit" class='btn btn-success' id='btnRegistrarAsesor'>
                        <i class="fas fa-save"></i> Registrar Asesor</button>
                    </div>
                    </form>
            </div>
        </div>
        <!--Modal Editar Asesor-->
        <div class="modal fade" id="ModalEditarAsesor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content bg-white">
                <div class="modal-header">
                    <h5 class="modal-title" style="text-align: center;" id="exampleModalLabel">Editar Asesor</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-white">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="col-md-6">
                        <label for="">Id Asesor</label>
                        <input type="text" class="form-control" id="txtModalIdAsesor" placeholder="id asesor" required>
                        <input type="hidden" class="form-control" id="txtModalIdUsuarioAsesorUpdate" placeholder="id asesor" required>
                        <div class="invalid-feedback">El Id es nesesario</div>
                    </div>
                        <div class="col-md-6">
                        <label for="">Clave</label>
                        <input type="text" class="form-control" id="txtModalClave" placeholder="Clave" required>
                        <input type="hidden" class="form-control" id="txtModalClaveusuarioUpdate" placeholder="Clave" required>
                        <div class="invalid-feedback">La Clave es nesesaria</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">Nombre del Asesor</label>
                        <input type="text" class="form-control" id="txtModalNombreAsesor" placeholder="Nombre del Asesor" required>
                        <div class="invalid-feedback">El nombre Asesor es nesesario</div>
                    </div>
                    
                    <div class="col-md-6">
                        <label for="">Apellido Paterno del Asesor</label>
                        <input type="text" class="form-control" id="txtModalAPAsesor" placeholder="Apellido Paterno" required>
                        <div class="invalid-feedback">El apellido paterno del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">Apellido Materno del Asesor</label>
                        <input type="text" class="form-control" id="txtModalAMAsesor" placeholder="Apellido Materno" required>
                        <div class="invalid-feedback">El apellido materno del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">Telefono del Asesor</label>
                        <input type="number" class="form-control" id="txtModalTelAsesor" placeholder="Teléfono Asesor" required>
                        <div class="invalid-feedback">El Teléfono del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">E-mail del Asesor</label>
                        <input type="text" class="form-control" id="txtModalEmailAsesor" placeholder="E-mail Asesor" required>
                        <div class="invalid-feedback">El email del Asesor es nesesario</div>
                    </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <button type="button" class="btn btn-primary" id='btnModalEditarAsesor' 
                    data-dismiss="modal"><i class='far fa-edit'></i> Actualizar Información</button>
                </div>
                </div>
            </div>
        </div>
        <!--Modal Editar Usuario-->
        <div class="modal fade" id="ModalEditarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content bg-white">
                <div class="modal-header">
                    <h5 class="modal-title" style="text-align: center;" id="exampleModalLabel">Editar Contraseña</h5><br>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-white">
                    <form class="row g-3 needs-validation" novalidate>
                        <label for="" style="text-align: center;">Para Modificar el Usuario, por favor modificalo desde la tabla de alumnos o asesores</label>
                        <div class="col-md-6">
                        <label for="">Id Usuario</label>
                        <input type="text" class="form-control" id="txtModalIdUsuario" placeholder="id Usuario" required>
                        <div class="invalid-feedback">El Id es nesesario</div>
                    </div>
                        <div class="col-md-6">
                        <label for="">Usuario</label>
                        <input type="text" class="form-control" id="txtModalUsuario" placeholder="Usuario" required>
                        <div class="invalid-feedback">El Usuario es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="">Contraseña</label>
                        <input type="text" class="form-control" id="txtModalPasswordUsuario" placeholder="Contraseña" required>
                        <div class="invalid-feedback">La contraseña es nesesaria</div>
                    </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <button type="button" class="btn btn-primary" id='btnModalEditarUsuario' 
                    data-dismiss="modal"><i class='far fa-edit'></i> Actualizar Información</button>
                </div>
                </div>
            </div>
        </div>

        <div class="row" id="divAgregarTrabajo" style="display: none;">
            <div class="col-12" style="text-align: center;">
                <br>
                <h1 class="animate__animated animate__backInLeft"><font color="black" size="7" >
                <b>REGISTRO DE TRABAJOS DE ALUMNOS</b></font></h1>
            </div>
            <div class="col-12">
                <form class="row g-3 needs-validation" novalidate>
                    <div class="col-md-12">
                        <label for="txtNombreTrabajo">Nombre del Proyecto o trabajo</label>
                        <textarea class="form-control" id="txtNombreTrabajo" rows="3" placeholder="Nombre del Trabajo" required></textarea>
                        <div class="invalid-feedback">El nombre Trabajo es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtCuentaAlumnoTrabajo">No. de cuenta del alumno</label>
                        <input type="text" class="form-control" id="txtCuentaAlumnoTrabajo" placeholder="No. de Cuenta del alumno" required>
                        <div class="invalid-feedback">El apellido materno del Asesor es nesesario</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtAsesorTrabajo">Clave del Asesor</label>
                        <input type="text" class="form-control" id="txtAsesorTrabajo" placeholder="Clave del Asesor" required>
                        <div class="invalid-feedback">La clave del Asesor del trabajo es nesesaria</div>
                    </div>
                    <div class="col-md-6">
                        <label for="txtTipoTrabajo">Tipo de trabajo</label>
                        <input type="text" class="form-control" id="txtTipoTrabajo" placeholder="Tipo" required>
                        <div class="invalid-feedback">El tipo del Trabajo es nesesario</div>
                    </div>
                    <div class="form-group col-6">
                        <label for="SelectMesTrabajo">Genero</label>
                        <select id="SelectMesTrabajo" class="custom-select" placeholder="Seleccionar..." required> 
                            <option>Seleccionar...</option>
                            <option>Enero</option> 
                            <option>Febrero</option> 
                            <option>Marzo</option> 
                            <option>Abril</option> 
                            <option>Mayo</option> 
                            <option>Junio</option> 
                            <option>Julio</option> 
                            <option>Agosto</option> 
                            <option>Septiembre</option> 
                            <option>Octubre</option> 
                            <option>Noviembre</option> 
                            <option>Diciembre</option>
                        </select>
                        <div class="invalid-feedback">El mes del Trabajo es nesesario</div>
                    </div>
                    <div class="form-group col-6">
                        <label for="SelectAñoTrabajo">Genero</label>
                        <select id="SelectAñoTrabajo" class="custom-select" placeholder="Seleccionar..." required> 
                            <option>Seleccionar...</option>
                            <option>20</option>
                            <option>2022</option>
                            <option>2021</option>
                            <option>2020</option>
                            <option>2019</option>
                            <option>2018</option> 
                            <option>2017</option> 
                            <option>2016</option> 
                            <option>2015</option> 
                            <option>2014</option> 
                            <option>2013</option> 
                            <option>2012</option> 
                            <option>2011</option> 
                            <option>2010</option> 
                            <option>2009</option>
                            <option>2008</option>
                            <option>2007</option>
                            <option>2006</option>
                            <option>2005</option>
                            <option>2004</option>
                            <option>2003</option>
                            <option>2002</option>
                            <option>2001</option>
                            <option>2000</option>
                        </select>
                        <div class="invalid-feedback">El Año del Trabajo es nesesario</div>
                    </div>
                    <div class="col-12 text-center">
                        <br>
                        <br>
                        <button type="submit" class='btn btn-success' id='btnRegistrarTrabajo'>
                        <i class="fas fa-save"></i> Registrar Trabajo</button>
                    </div>
                    </form>
            </div>
        </div>
        <!--Modal Editar Trabajo-->
        <div class="modal fade" id="ModalEditarTrabajo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content bg-white">
                <div class="modal-header">
                    <h5 class="modal-title" style="text-align: center;" id="exampleModalLabel">Editar Trabajo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-white">
                    <form class="needs-validation" novalidate>
                        <div class="form-group">
                            <label for="">Id del Proyecto o trabajo</label>
                            <input type="text" class="form-control" id="txtModalIdTrabajo" placeholder="Id del Trabajo" required>
                            <div class="invalid-feedback">El Id Trabajo es nesesario</div>
                        </div>

                        <div class="form-group">
                            <label for="">Nombre del Proyecto o trabajo</label>
                            <textarea class="form-control" id="txtModalNombreTrabajo" rows="3" placeholder="Nombre del Trabajo" required></textarea>
                            <div class="invalid-feedback">El nombre Trabajo es nesesario</div>
                        </div>
                        
                        <div class="form-group">
                            <label for="">Tipo de trabajo</label>
                            <input type="text" class="form-control" id="txtModalTipoTrabajo" placeholder="Tipo" required>
                            <div class="invalid-feedback">El tipo del Trabajo es nesesario</div>
                        </div>

                        <div class="form-group">
                            <label for="">No. de cuenta del alumno</label>
                            <input type="text" class="form-control" id="txtModalCuentaAlumnoTrabajo" placeholder="No. de Cuenta del alumno" required>
                            <div class="invalid-feedback">El apellido materno del Asesor es nesesario</div>
                        </div>

                        <div class="form-group">
                            <label for="">Clave del Asesor</label>
                            <input type="text" class="form-control" id="txtModalAsesorTrabajo" placeholder="Clave Asesor" required>
                            <div class="invalid-feedback">La clave del Asesor del trabajo es nesesaria</div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <button type="button" class="btn btn-primary" id='btnModalEditarTrabajo' 
                    data-dismiss="modal"><i class='far fa-edit'></i> Actualizar Información</button>
                </div>
                </div>
            </div>
        </div>
        <div class="row" id="divMostrarAsesores" style="display: none;">
            <div class="col-12" style="text-align: center;" id="mostrarAsesores"></div>
        </div>

        <div class="row" id="divMostrarUsuarios" style="display: none;">
            <div class="col-12" style="text-align: center;" id="mostrarUsuarios"></div>
        </div>

        <div class="row" id="divMostrarAlumnos" style="display: none;">
            <div class="col-12" style="text-align: center;" id="mostrarAlumnos"></div>
        </div>

        <div class="row" id="divMostrarTrabajos" style="display: none;">
            <div class="col-12" style="text-align: center;" id="mostrarTrabajosTodos"></div>
        </div>
    </div>
</body>
</html>