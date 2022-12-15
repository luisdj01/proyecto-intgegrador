<?php

    include "conexion.php";

    $nombreTrabajo=$_POST["txtNombreTrabajo"];
    $mes=$_POST["SelectMesTrabajo"];
    $año=$_POST["SelectAñoTrabajo"];
    $tipo=$_POST["txtTipoTrabajo"];
    $nocuentaAlumnoTrabajo=$_POST["txtCuentaAlumnoTrabajo"];
    $claveasesorTrabajo=$_POST["txtAsesorTrabajo"];
    $archivo = $_FILES["archivo"];

    if($archivo["type"] == "application/pdf"){
        $nombreFile = md5($archivo["tmp_name"]).".pdf";
        $ruta = 'uploads/'.$nombreFile;
        move_uploaded_file($archivo["tmp_name"], '../uploads/'.$nombreFile);
        
        $sql1="insert into trabajos values (0,'$nombreTrabajo','$mes','$año','$tipo','$nocuentaAlumnoTrabajo','$claveasesorTrabajo','$ruta')";
            // Se ejecuta la consulta con la base de datos
            $ejecutarSQL1=$conexion->query($sql1) or die ("Error al insertar Trabajo".$conexion->error);
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