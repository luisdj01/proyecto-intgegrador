<?php
// Definir los datos para la conexión
    $server="localhost";
    $user="root";
    $password="";
    $bd="repo";
    $conexion=new mysqli($server,$user,$password,$bd) or die ("Error al conectarse con la base de datos".$mysqli->error);
    $conexion->set_charset("utf8");
?>