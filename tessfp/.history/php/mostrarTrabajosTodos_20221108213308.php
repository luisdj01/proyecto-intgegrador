<?php
//Mostrar los datos almacenados en la tabla fuente
    include "conexion.php";
    $consultaSQL="Select trabajos.id_proyecto, trabajos.Nombre_proyecto, trabajos.Tipo, 
    trabajos.mes, trabajos.año, trabajos.no_cuenta_alumno, 
    alumno.Nombre,alumno.Apellido_Paterno,alumno.Apellido_Materno,
    asesor.Nombre, asesor.Apellido_paterno, asesor.Apellido_materno 
    FROM trabajos 
    JOIN alumno ON trabajos.no_cuenta_alumno = alumno.No_Cuenta 
    JOIN asesor ON trabajos.clave_asesor = asesor.Clave";
    //ejecutamos la consulta
    $ejecutarConsulta=$conexion->query($consultaSQL);
    //recoge las variables de una fila dentro de un array 
    //y los almacena en un variable cada fila
?>
<script type="text/javascript">
    $(document).ready(function(){
        $("#tablaTrabajos").DataTable();
    });
</script>
<?php
echo "<table id='tablaTrabajos'><thead><th>Id Proyecto</th><th>Nombre Proyecto</th><th>Tipo</th><th>Fecha</th>
<th>No de cuenta del Alumno</th><th>Nombre del Alumno</th><th>Asesor</th><th>Editar</th></thead>";
while($fila=$ejecutarConsulta->fetch_array()){
    //mostrar cada fila del array
    echo "<tr>";
    echo "<td>".$fila[0]."</td><td>".$fila[1]."</td>
    <td>".$fila[2]."</td><td>".$fila[3]."</td><td>".$fila[4]."</td><td>".$fila[5]." ".$fila[6]." ".$fila[7]."</td>
    <td>".$fila[8]." ".$fila[9]." ".$fila[10]."</td><td>
    <p class='btn btn-primary' data-toggle='modal' data-target='#ModalEditarTrabajo' onclick=editarTrabajo(".$fila[0].")>
    <i class='far fa-edit '></i>Actualizar</p></td>";
}
echo "</table>";
?> 