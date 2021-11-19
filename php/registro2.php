<?php
    include("conex.php");
    if(isset($_POST['registrarse'])){
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $email = $_POST['email'];
        $telefono = $_POST['telefono'];
        $id_nivel = $_POST['nivel'];
        $id_distrito = $_POST['distrito'];

        $insertarDatos = "INSERT INTO usuario  VALUES('','$nombre', '$apellido','$email', '$telefono','$id_nivel', '$id_distrito')";
        

        $ejecutar = mysqli_query($enlace, $insertarDatos);

        if(!$ejecutar){
            echo "<h3>No se ejecutó la inserción. Error en la linea sql.</h3>";
        }
    }
?>