<?php
//Mostrar los datos almacenados en la tabla fuente
    include "conexion.php";
    $consultaSQL="Select *from usuarios";
    //ejecutamos la consulta
    $ejecutarConsulta=$conexion->query($consultaSQL);
    //recoge las variables de una fila dentro de un array 
    //y los almacena en un variable cada fila
?>
<script type="text/javascript">
    $(document).ready(function(){
        $("#tablaUsuarios").DataTable();
    });
</script>
<?php
echo "<table id='tablaUsuarios'><thead><th>Id Usuario</th><th>Usuario</th><th>Contraseña</th><th>Editar</th></thead>";
while($fila=$ejecutarConsulta->fetch_array()){
    //mostrar cada fila del array
    echo "<tr>";
    echo "<td>".$fila[0]."</td><td>".$fila[1]."</td><td>".$fila[2]."</td><td>
    <p class='btn btn-primary' data-toggle='modal' data-target='#ModalEditarUsuario' onclick=editarUsuario(".$fila[1].")>
    <i class='far fa-edit '></i>Actualizar Contraseña</p></td>";
}
echo "</table>";
?>