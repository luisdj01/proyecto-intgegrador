$(document).ready(function(){
    //Funcion Login
    $("#btnIngresar").click(function(event){
        var usuario,password;
        usuario=$("#txtUsuario").val();
        password=$("#txtPassword").val();
        if(usuario!="" && password!="")
        {
            $.ajax({
                type:"GET",
                url:"php/servidor.php",
                data:{usuario:usuario,password:password,
                accion:"buscaUsuario"},
                success:function(respuesta)
                {
                    switch(respuesta)
                    {
                        case "1":
                            alertify.success("Hola Administrador");
                            var url="indexAdmin.php";
                            $(location).attr('href',url);
                            break;
                        case "2":
                            alertify.success("Hola Alumno");
                            var url="indexAlumno.php";
                            $(location).attr('href',url);
                            break;
                        default:
                            alertify.alert("USUARIO NO REGISTRADO");
                            break;
                    }
                }
            });
        }
        else{
            alertify.alert("LLENA LOS CAMPOS");
        } 
        
    });

    //regresar al menu donde esta la imagen y ocultando el fomulario y la tabla del beneficiario
    $("#menuInicio").click(function(event){
        $("#divInicio").show(1000);
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").hide(1000);
    });
    //Accion al dar clic en el menu agregar Alumno
    $("#menuAgregarAlumno").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").show(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").hide(1000);
    });
    $("#menuMostrarAlumno").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").show(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").hide(1000);
        $("#mostrarAlumnos").load("./php/mostrarAlumnos.php");
    });

    $("#menuAgregarAsesor").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").show(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").hide(1000);
    });

    $("#menuMostrarAsesor").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").show(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").hide(1000);
        $("#mostrarAsesores").load("./php/mostrarAsesores.php");
    });

    $("#menuUsuarios").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").show(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").hide(1000);
        $("#mostrarUsuarios").load("./php/mostrarUsuarios.php");

    });

    $("#menuRegistrarTrabajo").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").show(1000);
        $("#divMostrarTrabajos").hide(1000);
    });

    $("#menuConsultarTrabajo").click(function(event){
        $("#divInicio").hide("slow");
        $("#divAgregarAlumno").hide(1000);
        $("#divMostrarAlumnos").hide(1000);
        $("#divAgregarAsesor").hide(1000);
        $("#divMostrarAsesores").hide(1000);
        $("#divMostrarUsuarios").hide(1000);
        $("#divAgregarTrabajo").hide(1000);
        $("#divMostrarTrabajos").show(1000);
        $("#mostrarTrabajosTodos").load("./php/mostrarTrabajosTodos.php");
    });
    //Index Alumno
    $("#divInicioAlumno").click(function(event){
        $("#divInicioAlumno").show(100);
        $("#divTrabajosAlumno").hide(1000);
        $("#divmostrarAlumnos2").hide(1000);
        $("#divmostrarasesor2").hide(1000);
    });
    $("#menuTrabajosAlumno").click(function(event){
        $("#divInicioAlumno").hide("slow");
        $("#divTrabajosAlumno").show(1000);
        $("#divmostrarAlumnos2").hide(1000);
        $("#divmostrarasesor2").hide(1000);
        $("#mostrarTrabajosAlumno").load("./php/mostrarTrabajosAlumno.php");
    });
    $("#menuMostarAlumno2").click(function (event) {
        $("#divInicioAlumno").hide("slow");
        $("#divTrabajosAlumno2").hide(1000);
        $("#divmostrarAlumnos2").show(1000);
        $("#divmostrarasesor2").hide(1000);
        $("#mostrarAlumno2").load("./php/mostrarAlumno2.php");
    });
    $("#menuMostrarAsesor2").click(function (event) {
        $("#divInicioAlumno").hide("slow");
        $("#divTrabajosAlumno2").show(1000);
        $("#divmostrarAlumnos2").hide(1000);
        $("#divmostrarasesor2").show(1000);
        $("#mostrarAsesor2").load("./php/mostrarAsesor2.php");
    });


    // cerrar sesión
    $("#cerrarSesion").click(function(event){
        alertify.confirm("¿Deseas salir?",function(respuesta){
            if(respuesta)
            {
                $.ajax({
                    type:"GET",
                    url:"php/servidor.php",
                    data:{accion: "cerrarsesion"},
                        success: function(respuesta)
                        {
                            if(respuesta=="0")
                            var url="index.html";
                            $(location).attr('href',url);
                        }
                });
            }
            else {
                
            }
        });
        
    });

    //Guardar Alumno
    $("#btnRegistrarAlumno").click(function(event){
        //declaracion de variables
        var no_cuenta,password, nombre, ap, am, sexo, telefono, email, accion;
        //se recogen los datos de las cajas de texto
        no_cuenta = $("#txtNoCuenta").val();
        password = $("#txtPasswordAlumno").val();
        nombre=$("#txtNombreAlumno").val();
        ap = $("#txtAPAlumno").val();
        am=$("#txtAMAlumno").val();
        sexo = $("#SelectGeneroAlumno").val();
        telefono = $("#txtTelAlumno").val();
        email = $("#txtEmailAlumno").val();
        accion="RegistrarAlumno";
        if(no_cuenta != null && password != null && nombre != null &&  ap != null && am != null && sexo != "Seleccionar..." 
        && telefono != 0 && email != null ){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,no_cuenta:no_cuenta, password:password, nombre:nombre, ap:ap, am:am,
                sexo:sexo, telefono:telefono, email:email},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Alumno Registrado Exitosamente");
                        limpiarCamposAlumnos();
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
    }else{
        alertify.alert("Existen Campos Vacios");
    }
    });
    //Guardar Asesor
    $("#btnRegistrarAsesor").click(function(event){
        //declaracion de variables
        var clave,password, nombre, ap, am, telefono, email, accion;
        //se recogen los datos de las cajas de texto
        clave = $("#txtClave").val();
        password = $("#txtPasswordAsesor").val();
        nombre=$("#txtNombreAsesor").val();
        ap = $("#txtAPAsesor").val();
        am=$("#txtAMAsesor").val();
        sexo = $("#SelectGeneroAsesor").val();
        telefono = $("#txtTelAsesor").val();
        email = $("#txtEmailAsesor").val();
        accion="RegistrarAsesor";
        if(clave != null && password != null && nombre != null &&  ap != null && am != null && sexo != "Seleccionar..." 
        && telefono != 0 && email != null ){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,clave:clave, password:password, nombre:nombre, ap:ap, am:am,
                telefono:telefono, email:email},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Asesor Registrado Exitosamente");
                        limpiarCamposAsesor();
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
    }else{
        alertify.alert("Existen Campos Vacios");
    }
    });
    // Registrar Trabajo
    $("#btnRegistrarTrabajo").click(function(event){
        //declaracion de variables
        var nombreTrabajo, tipo, nocuentaAlumnoTrabajo, claveasesorTrabajo, accion;
        //se recogen los datos de las cajas de texto
        nombreTrabajo = $("#txtNombreTrabajo").val();
        tipo = $("#txtTipoTrabajo").val();
        nocuentaAlumnoTrabajo = $("#txtCuentaAlumnoTrabajo").val();
        claveasesorTrabajo = $("#txtAsesorTrabajo").val();
        accion="RegistrarTrabajo";

        if(nombreTrabajo != "" && tipo != "" && nocuentaAlumnoTrabajo != "" &&  claveasesorTrabajo != "" ){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,nombreTrabajo:nombreTrabajo, tipo:tipo, nocuentaAlumnoTrabajo:nocuentaAlumnoTrabajo, 
                claveasesorTrabajo:claveasesorTrabajo},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Trabajo Registrado Exitosamente");
                        limpiarCamposTrabajos();
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
        }else{
            alertify.alert("Existen Campos Vacios");
        }
    });

    //Actualizar Equipo
    $("#btnModalEditarAlumno").click(function(event){
        //declaracion de variables
        var id_AlumnoM, no_cuentaM, nombreM, apM, amM, sexoM, telefonoM, emailM, accion;
        //se recogen los datos de las cajas de texto
        id_AlumnoM = $("#txtModalIdAlumno").val();
        no_cuentaM = $("#txtModalNoCuenta").val();
        nombreM = $("#txtModalNombreAlumno").val();
        apM = $("#txtModalAPAlumno").val();
        amM = $("#txtModalAMAlumno").val();
        sexoM = $("#SelectModalGeneroAlumno").val();
        telefonoM = $("#txtModalTelAlumno").val();
        emailM = $("#txtModalEmailAlumno").val();
        id_UsuarioUpdateM = $("#txtModalIdUsuarioUpdate").val();
        usuarioUpdateM = $("#txtModalNoCuentaUsuarioUpdate").val();
        accion = "EditarAlumno";
        //Se envian los datos al servidor(backend)
        if(no_cuentaM != null && nombreM != null &&  apM != null && amM != null && sexoM != "Seleccionar..." 
        && telefonoM != 0 && emailM != null){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,id_AlumnoM:id_AlumnoM,no_cuentaM:no_cuentaM, nombreM:nombreM, apM:apM, amM:amM,
                sexoM:sexoM, telefonoM:telefonoM, emailM:emailM, id_UsuarioUpdateM:id_UsuarioUpdateM, usuarioUpdateM:usuarioUpdateM},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Datos del alumno actualizados correctamente");
                        $("#mostrarAlumnos").hide();
                        $("#mostrarAlumnos").load("./php/mostrarAlumnos.php");
                        $("#mostrarAlumnos").show(1000);
                        alertify.alert("Por favor Vuelve a iniciar Sesión",function(respuesta){
                            if(respuesta)
                            {
                                $.ajax({
                                    type:"GET",
                                    url:"php/servidor.php",
                                    data:{accion: "cerrarsesion"},
                                        success: function(respuesta)
                                        {
                                            if(respuesta=="0")
                                            var url="index.html";
                                            $(location).attr('href',url);
                                        }
                                });
                            }
                            else {
                                
                            }
                            });
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
    }else{
        alertify.alert("Existen Campos Vacios");
    }
    });
    $("#btnModalEditarAsesor").click(function(event){
        //declaracion de variables
        var id_AsesorM, claveM, nombreM, apM, amM, telefonoM, emailM, accion;
        //se recogen los datos de las cajas de texto
        id_AsesorM = $("#txtModalIdAsesor").val();
        claveM = $("#txtModalClave").val();
        nombreM = $("#txtModalNombreAsesor").val();
        apM = $("#txtModalAPAsesor").val();
        amM = $("#txtModalAMAsesor").val();
        telefonoM = $("#txtModalTelAsesor").val();
        emailM = $("#txtModalEmailAsesor").val();
        id_UsuarioAsesorUpdateM = $("#txtModalIdUsuarioAsesorUpdate").val();
        usuarioAsesorUpdateM = $("#txtModalClaveusuarioUpdate").val();
        accion = "EditarAsesor";
        //Se envian los datos al servidor"(backend)
        if(id_AsesorM != "" && claveM != "" && nombreM != "" &&  apM != "" && amM != "" &&  telefonoM != "" && emailM != "" ){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,id_AsesorM:id_AsesorM,claveM:claveM, nombreM:nombreM, apM:apM, amM:amM,
                telefonoM:telefonoM, emailM:emailM, id_UsuarioAsesorUpdateM:id_UsuarioAsesorUpdateM, usuarioAsesorUpdateM:usuarioAsesorUpdateM},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Datos del Asesor actualizados correctamente");
                        $("#mostrarAsesores").hide();
                        $("#mostrarAsesores").load("./php/mostrarAsesores.php");
                        $("#mostrarAsesores").show(1000);
                        
                        /* alertify.alert("Por favor Vuelve a iniciar Sesión",function(respuesta){
                            if(respuesta)
                            {
                                $.ajax({
                                    type:"GET",
                                    url:"php/servidor.php",
                                    data:{accion: "cerrarsesion"},
                                        success: function(respuesta)
                                        {
                                            if(respuesta=="0")
                                            var url="index.html";
                                            $(location).attr('href',url);
                                        }
                                });
                            }
                            else {
                                
                            }
                            }); */
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
    }else{
        alertify.alert("Existen Campos Vacios");
    }
    });

    $("#btnModalEditarUsuario").click(function(event){
        //declaracion de variables
        var id_usuarioM, usuarioM, passwordM, accion;
        //se recogen los datos de las cajas de texto
        id_usuarioM = $("#txtModalIdUsuario").val();
        usuarioM = $("#txtModalUsuario").val();
        passwordM = $("#txtModalPasswordUsuario").val();
        accion = "EditarPass";
        //Se envian los datos al servidor(backend)
        if(id_usuarioM != null && usuarioM != null && passwordM != null){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,id_usuarioM:id_usuarioM,usuarioM:usuarioM,passwordM:passwordM},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Contraseña actualizada correctamente");
                        $("#mostrarUsuarios").hide();
                        $("#mostrarUsuarios").load("./php/mostrarUsuarios.php");
                        $("#mostrarUsuarios").show(1000);
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
    }else{
        alertify.alert("Existen Campos Vacios");
    }
    });
    //Actualizar Trabajo
    $("#btnModalEditarTrabajo").click(function(event){
        //declaracion de variables
        var id_proyectoM, nombreTrabajoM, tipoM, nocuentaAlumnoTrabajoM, claveasesorTrabajoM, accion;
        //se recogen los datos txtModalIdTrabajode las cajas de texto
        id_proyectoM = $("#txtModalIdTrabajo").val();
        nombreTrabajoM = $("#txtModalNombreTrabajo").val();
        mesM = $("#SelectMesTrabajoModal").val();
        añoM = $("#SelectAñoTrabajoModal").val();
        tipoM = $("#txtModalTipoTrabajo").val();
        nocuentaAlumnoTrabajoM = $("#txtModalCuentaAlumnoTrabajo").val();
        claveasesorTrabajoM = $("#txtModalAsesorTrabajo").val();
        accion="EditarTrabajo";

        if(nombreTrabajoM != "" && tipoM != "" && nocuentaAlumnoTrabajoM != "" &&  claveasesorTrabajoM != "" ){
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion,id_proyectoM:id_proyectoM,nombreTrabajoM:nombreTrabajoM, mesM:mesM, añoM:añoM, tipoM:tipoM, nocuentaAlumnoTrabajoM:nocuentaAlumnoTrabajoM, 
                claveasesorTrabajoM:claveasesorTrabajoM},
                success:function(respuestaPHP){
                    //se verifica la resupesta del servidor
                    if(respuestaPHP=="1"){
                        alertify.alert("Datos del Trabajo actualizados correctamente");
                        $("#mostrarTrabajosTodos").hide();
                        $("#mostrarTrabajosTodos").load("./php/mostrarTrabajosTodos.php");
                        $("#mostrarTrabajosTodos").show(1000);
                    }
                    else
                    {
                        alertify.error("No se registro correctamente");
                    }
                }
        });
    }else{
        alertify.alert("Existen Campos Vacios");
    }
    });

    $("#btnNuevo").click(function(event){
        limpiarCamposBeneficiario();
        $("#lblPass").show(1000);
        $("#txtPasswordBeneficiario").show(1000);
        $('#btnGuardarBeneficiario').addClass("btn btn-success");
        $('#btnGuardarBeneficiario').val("Guardar");
        $("#btnGuardarBeneficiario").html("<i class='fas fa-save'></i> Guardar");
    });



    function limpiarCamposAlumnos(){
        $("#txtNoCuenta").val("");
        $("#txtPasswordAlumno").val("");
        $("#txtNombreAlumno").val("");
        $("#txtAPAlumno").val("");
        $("#txtAMAlumno").val("");
        $("#SelectGeneroAlumno").val("Seleccionar...");
        $("#txtTelAlumno").val("");
        $("#txtEmailAlumno").val("");
    }
    function limpiarCamposAsesor(){
        $("#txtClave").val("");
        $("#txtPasswordAsesor").val("");
        $("#txtNombreAsesor").val("");
        $("#txtAPAsesor").val("");
        $("#txtAMAsesor").val("");
        $("#SelectGeneroAsesor").val("Seleccionar...");
        $("#txtTelAsesor").val("");
        $("#txtEmailAsesor").val("");
    }
    function limpiarCamposTrabajos(){
        $("#txtNombreTrabajo").val("");
        $("#txtTipoTrabajo").val("");
        $("#txtCuentaAlumnoTrabajo").val("");
        $("#txtAsesorTrabajo").val("");
    }

    $('#sidebarCollapse').click(function(event){
        $('#sidebar, #content').toggleClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    });

});
function editarAlumno(no_cuenta){
        $("#ModalEditarAlumno").modal("show");
        $("#txtModalIdAlumno").attr("readonly", "true");
        accion="infoAlumno";
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion, no_cuenta:no_cuenta},
            success:function(respuesta){
                if(respuesta){
                    console.log(respuesta);
                    datos = $.parseJSON(respuesta);
                    if(datos.length > 0){
                        $("#txtModalIdAlumno").val(datos[0]["id_alumno"]);
                        $("#txtModalNoCuenta").val(datos[0]['No_Cuenta']);
                        $("#txtModalNombreAlumno").val(datos[0]['Nombre']);
                        $("#txtModalAPAlumno").val(datos[0]["Apellido_Paterno"]);
                        $("#txtModalAMAlumno").val(datos[0]["Apellido_Materno"]);
                        $("#SelectModalGeneroAlumno").val(datos[0]["Sexo"]);
                        $("#txtModalTelAlumno").val(datos[0]["Telefono"]);
                        $("#txtModalEmailAlumno").val(datos[0]['Email']);
                        $("#txtModalIdUsuarioUpdate").val(datos[0]["id_usuario"]);
                        $("#txtModalNoCuentaUsuarioUpdate").val(datos[0]["usuario"]);
                    }    
                }
            }
        });
    }
function editarAsesor(clave){
    console.log(clave);
        $("#ModalEditarAsesor").modal("show");
        $("#txtModalIdAsesor").attr("readonly", "true");
        accion="infoAsesor";
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion, clave:clave},
            success:function(respuesta){
                if(respuesta){
                    console.log(respuesta);
                    datos = $.parseJSON(respuesta);
                    if(datos.length > 0){
                        $("#txtModalIdAsesor").val(datos[0]["id_asesor"]);
                        $("#txtModalClave").val(datos[0]['Clave']);
                        $("#txtModalNombreAsesor").val(datos[0]["Nombre"]);
                        $("#txtModalAPAsesor").val(datos[0]["Apellido_paterno"]);
                        $("#txtModalAMAsesor").val(datos[0]["Apellido_materno"]);
                        $("#txtModalTelAsesor").val(datos[0]["Telefono"]);
                        $("#txtModalEmailAsesor").val(datos[0]['Email']);
                        $("#txtModalIdUsuarioAsesorUpdate").val(datos[0]['id_usuario']);
                        $("#txtModalClaveusuarioUpdate").val(datos[0]["usuario"]);
                    }    
                }
            }
        });
    }
function editarUsuario(usuario){
        $("#ModalEditarUsuarior").modal("show");
        $("#txtModalIdUsuario").attr("readonly", "true");
        $("#txtModalUsuario").attr("readonly", "true");
        accion="infoUsuario";
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion, usuario:usuario},
            success:function(respuesta){
                if(respuesta){
                    console.log(respuesta);
                    datos = $.parseJSON(respuesta);
                    if(datos.length > 0){
                        $("#txtModalIdUsuario").val(datos[0]["id_usuario"]);
                        $("#txtModalUsuario").val(datos[0]["usuario"]);
                        $("#txtModalPasswordUsuario").val(datos[0]["password"]);
                    }    
                }
            }
        });
    }
function editarTrabajo(id){
        console.log(id);
        $("#ModalEditarTrabajo").modal("show");
        $("#txtModalIdTrabajo").attr("readonly", "true");
        accion="infoTrabajo";
        $.ajax({
            url:"./php/servidor.php",
            type:"GET",
            data:{accion:accion, id:id},
            success:function(respuesta){
                if(respuesta){
                    console.log(respuesta);
                    datos = $.parseJSON(respuesta);
                    if(datos.length > 0){
                        $("#txtModalIdTrabajo").val(datos[0]["id_proyecto"]);
                        $("#txtModalNombreTrabajo").val(datos[0]["Nombre_proyecto"]);
                        $("#SelectMesTrabajoModal").val(datos[0]["mes"]);
                        $("#SelectAñoTrabajoModal").val(datos[0]["año"]);
                        $("#txtModalTipoTrabajo").val(datos[0]["Tipo"]);
                        $("#txtModalCuentaAlumnoTrabajo").val(datos[0]["no_cuenta_alumno"]);
                        $("#txtModalAsesorTrabajo").val(datos[0]["clave_asesor"]);
                    }    
                }
            }
        });
    }
function eliminarAlumno(no_cuenta){
    alertify.confirm("Deseas eliminar al alumno con número de cuenta "+no_cuenta+" para siempre?",function(respuesta){
        if(respuesta){
            accion="eliminarAlumno";
            $.ajax({
                url:"./php/servidor.php",
                type:"GET",
                data:{accion:accion, no_cuenta:no_cuenta},
                    success:function(respuestaPHP){
                        if(respuestaPHP=="1"){
                            alertify.alert("Se elimino correctamente");
                            $("#mostrarAlumnos").hide();
                            $("#mostrarAlumnos").load("./php/mostrarAlumnos.php");
                            $("#mostrarAlumnos").show(100);
                        }
                        else{
                            alertify.error("No se elimino correctamente" + respuestaPHP)
                        }
                    }
            });
        }
    });
}
function eliminarAsesor(clave){
    alertify.confirm("Deseas eliminar al Asesor con clave "+clave+" para siempre?",function(respuesta){
        if(respuesta){
            accion="eliminarAsesor";
            $.ajax({
                url:"./php/servidor.php",
                type:"GET",
                data:{accion:accion, clave:clave},
                    success:function(respuestaPHP){
                        if(respuestaPHP=="1"){
                            alertify.alert("Se elimino correctamente");
                            $("#mostrarAsesores").hide();
                            $("#mostrarAsesores").load("./php/mostrarAsesores.php");
                            $("#mostrarAsesores").show(100);
                        }
                        else{
                            alertify.error("No se elimino correctamente" + respuestaPHP)
                        }
                    }
            });
        }
    });
}
function eliminarTrabajos(id){
    alertify.confirm("Deseas eliminar el trabajo con id "+id+" ?",function(respuesta){
        if(respuesta){
            accion="eliminarTrabajo";
            $.ajax({
                url:"./php/servidor.php",
                type:"GET",
                data:{accion:accion, id:id},
                    success:function(respuestaPHP){
                        if(respuestaPHP=="1"){
                            alertify.alert("Se elimino correctamente");
                            $("#mostrarTrabajosTodos").hide();
                            $("#mostrarTrabajosTodos").load("./php/mostrarTrabajosTodos.php");
                            $("#mostrarTrabajosTodos").show(100);
                        }
                        else{
                            alertify.error("No se elimino correctamente" + respuestaPHP)
                        }
                    }
            });
        }
    });
}
(function() {
    'use strict';
    window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
        });
    }, false);
})();