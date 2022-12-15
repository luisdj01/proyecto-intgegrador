function registrar_archivo() {
    var parametros = new FormData($("#formulario-enviar")[0]);

    $.ajax({
        data: parametros,
        url: "php/upload.php",
        type: "POST",
        contentType: false,
        processData: false,
        beforesend: function (){

        },
        success: function (response){
            alert(response);
        }
    });
}