$(document).ready(function(){
    let $nivel = document.getElementById('nivel');
    let $provincia = document.getElementById('provincia');
    let $distrito = document.getElementById('distrito');

    function cargarNivel(){
        $.ajax({
            // establecemos el metodo por el cual obtendremos lo datos y luego especificamos la ruta del archivo de donde vienen los datos.
            type:"GET",
            url:"php/select.php",
            success: function(response){
                // Al obtenerlos lo deserializamos con el .parse.
                const niveles = JSON.parse(response);
                // console.log(response);

                // luego ponemos la primero opcion desactivada para que el usuario seleccione algo de la lista.
                let htmlNivel = `<option selected disabled> Seleccione </option>`;

                // posteriormente hacemos un recorrido con forEach para llenar las opciones de la lista desplegable poniendo el nombre de la variable que asignamos al JSON y su fila por ejemplo primero obtenemos el valor y luego el texto.
                niveles.forEach(niveles => {
                    htmlNivel += `<option value="${niveles.idNivel}">${niveles.nomNivel}</option>`;
                });
                // por ultimo añadimos el codigo de las opciones a la variable del id del select que queremos llenar de opciones.
                $nivel.innerHTML = htmlNivel;
            }
        });
    }
    cargarNivel();

    // Hacemos lo mismo para la siguiente lista.
    function cargarProvincia(){
        $.ajax({
            type:"GET",
            url: "php/selectProv.php",
            success: function(response2){
                const provincias = JSON.parse(response2);
                // console.log(response2);

                let htmlProv = `<option selected disabled> Seleccione provincia</option>`;
  
                provincias.forEach(provincias =>{
                    htmlProv += `<option value="${provincias.idProv}">${provincias.nomProv}</option>`;
                })
                $provincia.innerHTML = htmlProv;
            }
        });
    }
    cargarProvincia();
    // Aqui es lo mismo solo que se utiliza sendData cuyo valor es id de la provincia.
    function cargarDistrito(sendData){
        $.ajax({
            url:"php/selectProv.php",
            // No me funcionaba el innerhtml por alguna extraña razón pero se arreglo modificando al go en el url.
            type:"POST",
            data: sendData,
            success: function(response3){
                const distritoss = JSON.parse(response3);
                console.log(response3);

                let htmlDist = `<option selected disabled> Seleccione distrito</option>`;
  
                distritoss.forEach(distritoss =>{
                    htmlDist += `<option value="${distritoss.idDist}">${distritoss.nomDist}</option>`;
                })
                console.log(htmlDist);
                $distrito.innerHTML = htmlDist;
            }
        });
    }

    $provincia.addEventListener('change',() => {
        const valor = $provincia.value;
        console.log(valor);

        const sendData = {
            'idProvincia': valor
        };

        cargarDistrito(sendData);
    });
});