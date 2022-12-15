<?php
//Mostrar los datos almacenados en la tabla fuente
    include "conexion.php";
    $consultaSQL="Select *from alumno";
    //ejecutamos la consulta
    $ejecutarConsulta=$conexion->query($consultaSQL);
    //recoge las variables de una fila dentro de un array 
    //y los almacena en un variable cada fila
?>
<script type="text/javascript">
    $(document).ready(function(){
        $("#tablaAlumnos").DataTable();
    });
</script>
<?php
echo "<table id='tablaAlumnos'><thead><th>Id Alumno</th><th>No. Cuenta</th><th>Nombre</th>
<th>Apellido Paterno</th><th>Apellido Materno</th></th><th>Sexo</th><th>Teléfono</th>
<th>E-mail</th></thead>";
while($fila=$ejecutarConsulta->fetch_array()){
    //mostrar cada fila del array
    echo "<tr>";
    echo "<td>".$fila[0]."</td><td>".$fila[1]."</td>
    <td>".$fila[2]."</td><td>".$fila[3]."</td><td>".$fila[4]."</td><td>".$fila[5]."</td>
    <td>".$fila[6]."</td><td>".$fila[7]."</td>";
}
echo "</table>";
?>