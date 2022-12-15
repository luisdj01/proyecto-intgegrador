<?php

    include "conexion.php";
    $id_proyectoM = $_POST["txtModalIdTrabajo"];
    $nombreTrabajoM=$_POST["txtModalNombreTrabajo"];
    $mesM=$_POST["SelectMesTrabajoModal"];
    $añoM=$_POST["SelectAñoTrabajoModal"];
    $tipoM=$_POST["txtModalTipoTrabajo"];
    $nocuentaAlumnoTrabajoM=$_POST["txtModalCuentaAlumnoTrabajo"];
    $claveasesorTrabajoM=$_POST["txtModalAsesorTrabajo"];
    $archivoM = $_FILES["archivoModal"];

    if($archivoM["type"] == "application/pdf"){
        $nombreFileM = md5($archivoM["tmp_name"]).".pdf";
        $rutaM = 'uploads/'.$nombreFileM;
        move_uploaded_file($archivoM["tmp_name"], '../uploads/'.$nombreFileM);
        
        $sql1="Update trabajos set Nombre_proyecto = '$nombreTrabajoM', mes = '$mesM', año = '$añoM', tipo = '$tipoM', 
        no_cuenta_Alumno = '$nocuentaAlumnoTrabajoM', clave_asesor = '$claveasesorTrabajoM', '$rutam' where Id_proyecto = '$id_proyectoM'";
        // Se ejecuta la consulta con la base de datos
        $ejecutarSQL1=$conexion->query($sql1) or die ("Error al Actualizar Trabajo".$conexion->error);
        if ($ejecutarSQL1){
            echo "1";
        }
        else
        {
            echo "0";
        }       
    }else{
        echo "2";
    }
?>