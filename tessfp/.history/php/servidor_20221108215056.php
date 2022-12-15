<?php
    include "conexion.php";
    //Acción a realizar
    $accion=$_GET["accion"];
    // se evalua la accion 
    switch ($accion) {
        case 'RegistrarAlumno':
            // se reciben los datos a insertar 
            $no_cuenta=$_GET["no_cuenta"];
            $password=$_GET["password"];
            $nombre=$_GET["nombre"];
            $ap=$_GET["ap"];
            $am=$_GET["am"];
            $sexo=$_GET["sexo"];
            $telefono=$_GET["telefono"];
            $email=$_GET["email"];
            //se define la consulta sql a realizar
            $sql1="insert into alumno values (0,'$no_cuenta','$nombre','$ap','$am','$sexo','$telefono','$email')";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al insertar alumno".$conexion->error);

            // Insert Tabla Usuario
            $rol=2;
            $sql2="insert into usuarios values (0,'$no_cuenta','$password','$rol')";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL2=$conexion->query($sql2) or die ("Error al insertar usuario".$conexion->error);
            //comprobar la ejecución
            if ($ejecutarSQL1 && $ejecutarSQL2){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'RegistrarAsesor':
            // se reciben los datos a insertar 
            $clave=$_GET["clave"];
            $password=$_GET["password"];
            $nombre=$_GET["nombre"];
            $ap=$_GET["ap"];
            $am=$_GET["am"];
            $telefono=$_GET["telefono"];
            $email=$_GET["email"];
            //se define la consulta sql a realizar
            $sql1="insert into asesor values (0,'$clave','$nombre','$ap','$am','$telefono','$email')";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al insertar Asesor".$conexion->error);

            // Insert Tabla Usuario
            $rol=1;
            $sql2="insert into usuarios values (0,'$clave','$password','$rol')";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL2=$conexion->query($sql2) or die ("Error al insertar usuario".$conexion->error);
            //comprobar la ejecución
            if ($ejecutarSQL1 && $ejecutarSQL2){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'RegistrarTrabajo':
            // se reciben los datos a insertar 
            $nombreTrabajo=$_GET["nombreTrabajo"];
            $tipo=$_GET["tipo"];
            $nocuentaAlumnoTrabajo=$_GET["nocuentaAlumnoTrabajo"];
            $claveasesorTrabajo=$_GET["claveasesorTrabajo"];
            //se define la consulta sql a realizar
            $sql1="insert into trabajos values (0,'$nombreTrabajo','$tipo','$nocuentaAlumnoTrabajo','$claveasesorTrabajo')";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al insertar Trabajo".$conexion->error);
            if ($ejecutarSQL1){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'EditarAlumno':
            // se reciben los datos a insertar
            $id_AlumnoM=$_GET["id_AlumnoM"];
            $no_cuentaM=$_GET["no_cuentaM"];
            $nombreM=$_GET["nombreM"];
            $apM=$_GET["apM"];
            $amM=$_GET["amM"];
            $sexoM=$_GET["sexoM"];
            $telefonoM=$_GET["telefonoM"];
            $emailM=$_GET["emailM"];
            $id_UsuarioUpdateM=$_GET["id_UsuarioUpdateM"];
            $usuarioUpdateM=$_GET["usuarioUpdateM"];
            //se define la consulta sql a realizar
            $sql1="Update alumno set No_Cuenta = '$no_cuentaM', Nombre = '$nombreM', Apellido_Paterno = '$apM', Apellido_Materno = '$amM', 
            Sexo = '$sexoM', Telefono = '$telefonoM', Email = '$emailM' where id_alumno = '$id_AlumnoM'";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al Actualizar Alumno".$conexion->error);
            
            $sql2="Update usuarios set usuario = '$no_cuentaM' where id_usuario = '$id_UsuarioUpdateM'";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL2=$conexion->query($sql2) or die ("Error al Actualizar Usuario".$conexion->error);

            if ($ejecutarSQL1 && $ejecutarSQL2){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'EditarAsesor':
            // se reciben los datos a insertar
            $id_AsesorM=$_GET["id_AsesorM"];
            $claveM=$_GET["claveM"];
            $nombreM=$_GET["nombreM"];
            $apM=$_GET["apM"];
            $amM=$_GET["amM"];
            $telefonoM=$_GET["telefonoM"];
            $emailM=$_GET["emailM"];
            $id_UsuarioAsesorUpdateM=$_GET["id_UsuarioAsesorUpdateM"];
            $usuarioAsesorUpdateM=$_GET["usuarioAsesorUpdateM"];
            //se define la consulta sql a realizar
            $sql1="Update asesor set Clave = '$claveM', Nombre = '$nombreM', Apellido_paterno = '$apM', Apellido_materno = '$amM', 
            Telefono = '$telefonoM', Email = '$emailM' where id_asesor = '$id_AsesorM'";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al Actualizar Alumno".$conexion->error);

            $sql2="Update usuarios set usuario = '$claveM' where id_usuario = '$id_UsuarioAsesorUpdateM'";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL2=$conexion->query($sql2) or die ("Error al Actualizar Usuario".$conexion->error);

            if ($ejecutarSQL1 && $ejecutarSQL2){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'EditarPass':
            // se reciben los datos a insertar
            $id_usuarioM=$_GET["id_usuarioM"];
            $usuarioM=$_GET["usuarioM"];
            $passwordM=$_GET["passwordM"];
            //se define la consulta sql a realizar
            $sql1="Update usuarios set usuario = '$usuarioM', password = '$passwordM' where id_usuario = '$id_usuarioM'";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al Actualizar contraseña".$conexion->error);
            if ($ejecutarSQL1){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'EditarTrabajo':
            // se reciben los datos a insertar
            $id_proyectoM=$_GET["id_proyectoM"];
            $nombreTrabajoM=$_GET["nombreTrabajoM"];
            $mesM=$_GET["mesM"];
            $añoM=$_GET["añoM"];
            $tipoM=$_GET["tipoM"];
            $nocuentaAlumnoTrabajoM=$_GET["nocuentaAlumnoTrabajoM"];
            $claveasesorTrabajoM=$_GET["claveasesorTrabajoM"];
            //se define la consulta sql a realizar
            $sql1="Update trabajos set Nombre_proyecto = '$nombreTrabajoM', mes = '$'tipo = '$tipoM', 
            no_cuenta_Alumno = '$nocuentaAlumnoTrabajoM', clave_asesor = '$claveasesorTrabajoM' where Id_proyecto = '$id_proyectoM'";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al Actualizar Alumno".$conexion->error);

            if ($ejecutarSQL1){
                echo "1";
            }
            else
            {
                echo "0";
            }
            break;
        case 'eliminarAlumno':
                // se reciben los datos a insertar 
                $no_cuenta=$_GET["no_cuenta"];
                //se define la consulta sql a realizar
                $sql1="delete from alumno where No_Cuenta='$no_cuenta'";
                // Se ejecuta la consulta con la base de datos
                $ejecutarSQL1=$conexion->query($sql1) or die ("Error al eliminar Alumno".$conexion->error);
                // delete usuario
                $sql2="delete from usuarios where usuario ='$no_cuenta'";
                // Se ejecuta la consulta con la base de datos
                $ejecutarSQL2=$conexion->query($sql2) or die ("Error al Usuario del Alumno".$conexion->error);
                //comprobar la ejecución
                if ($ejecutarSQL1 && $ejecutarSQL2){
                    echo "1";
                }
                else
                {
                    echo "0";
                }
                break;
            case 'eliminarAsesor':
                // se reciben los datos a insertar 
                $clave=$_GET["clave"];
                //se define la consulta sql a realizar
                $sql1="delete from asesor where Clave='$clave'";
                // Se ejecuta la consulta con la base de datos
                $ejecutarSQL1=$conexion->query($sql1) or die ("Error al eliminar Asesor".$conexion->error);
                // delete usuario
                $sql2="delete from usuarios where usuario ='$clave'";
                // Se ejecuta la consulta con la base de datos
                $ejecutarSQL2=$conexion->query($sql2) or die ("Error al Usuario del Asesor".$conexion->error);
                //comprobar la ejecución
                if ($ejecutarSQL1 && $ejecutarSQL2){
                    echo "1";
                }
                else
                {
                    echo "0";
                }
                break;
            case 'eliminarTrabajo':
                // se reciben los datos a insertar 
                $id=$_GET["id"];
                //se define la consulta sql a realizar
                $sql1="delete from trabajos where Id_proyecto='$id'";
                // Se ejecuta la consulta con la base de datos
                $ejecutarSQL1=$conexion->query($sql1) or die ("Error al eliminar Asesor".$conexion->error);
                if ($ejecutarSQL1){
                    echo "1";
                }
                else
                {
                    echo "0";
                }
                break;
            case 'infoAlumno':
            $no_cuenta=$_GET["no_cuenta"];
            $sql="SELECT alumno.*, usuarios.id_usuario, usuarios.usuario 
            From alumno, usuarios 
            Where alumno.No_Cuenta = '$no_cuenta' and usuarios.usuario = '$no_cuenta'";
            $resultado=$conexion->query($sql);
            $total=$resultado->num_rows;
            if($total==1){
                $fila=$resultado->fetch_array();
                $datos[]=array(
                    "id_alumno" => $fila['id_alumno'],
                    "No_Cuenta" => $fila['No_Cuenta'],
                    "Nombre" => $fila['Nombre'],
                    "Apellido_Paterno" => $fila['Apellido_Paterno'],
                    "Apellido_Materno" => $fila['Apellido_Materno'],
                    "Sexo" => $fila['Sexo'],
                    "Telefono" => $fila['Telefono'],
                    "Email" => $fila['Email'],
                    "id_usuario" => $fila['id_usuario'],
                    "usuario" => $fila['usuario'],
                );
                echo json_encode($datos);
            }
            break;
        case 'infoAsesor':
            $clave=$_GET["clave"];
            $sql="SELECT asesor.*, usuarios.id_usuario, usuarios.usuario 
            From asesor, usuarios 
            Where asesor.Clave = '$clave' and usuarios.usuario = '$clave'";
            $resultado=$conexion->query($sql);
            $total=$resultado->num_rows;
            if($total==1){
                $fila=$resultado->fetch_array();
                $datos[]=array(
                    "id_asesor" => $fila['id_asesor'],
                    "Clave" => $fila['Clave'],
                    "Nombre" => $fila['Nombre'],
                    "Apellido_paterno" => $fila['Apellido_paterno'],
                    "Apellido_materno" => $fila['Apellido_materno'],
                    "Telefono" => $fila['Telefono'],
                    "Email" => $fila['Email'],
                    "id_usuario" => $fila['id_usuario'],
                    "usuario" => $fila['usuario'],
                );
                echo json_encode($datos);
            }
            break;
        case 'infoUsuario':
            $usuario=$_GET["usuario"];
            $sql="Select * from usuarios where usuario='$usuario'";
            $resultado=$conexion->query($sql);
            $total=$resultado->num_rows;
            if($total==1){
                $fila=$resultado->fetch_array();
                $datos[]=array(
                    "id_usuario" => $fila['id_usuario'],
                    "usuario" => $fila['usuario'],
                    "password" => $fila['password'],
                );
                echo json_encode($datos);
            }
            break;
        case 'infoTrabajo':
            $id=$_GET["id"];
            $sql="Select * from trabajos where Id_proyecto='$id'";
            $resultado=$conexion->query($sql);
            $total=$resultado->num_rows;
            if($total==1){
                $fila=$resultado->fetch_array();
                $datos[]=array(
                    "id_proyecto" => $fila['id_proyecto'],
                    "Nombre_proyecto" => $fila['Nombre_proyecto'],
                    "Tipo" => $fila['Tipo'],
                    "mes" => $fila['mes'],
                    "año" => $fila['año'],
                    "no_cuenta_alumno" => $fila['no_cuenta_alumno'],
                    "clave_asesor" => $fila['clave_asesor'],

                );
                echo json_encode($datos);
            }
            break;
        case 'buscaUsuario':
            $usuario=$_GET["usuario"];
            $password=$_GET["password"];
            $sql="Select *from usuarios where usuario='$usuario' and password='$password'";
            $resultado=$conexion->query($sql);
            $total=$resultado->num_rows;
            if ($total==1) {
                $fila=$resultado->fetch_array();
                $rol=$fila['rol'];
                switch ($rol) {
                    case "1":
                        session_start();
                        $_SESSION['administrador']=$usuario;
                        break;
                    
                    case "2":
                        session_start();
                        $_SESSION['Alumno']=$usuario;
                        break;
                }
                echo $rol;
            }
            else {
                echo "0";
            }
            break;    
        case 'cerrarsesion':
            session_start();
            session_destroy();
            echo "0";
            break;

    }
?>