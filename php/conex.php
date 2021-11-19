<?php
//validamos datos del servidor
$user = "admin";
$pass = "123456";
$server = "localhost";
$bd = "laboratorio3";

//conetamos al base datos
$enlace = mysqli_connect($server, $user, $pass, $bd);

if(!$enlace){
    echo "<h2>No se ha establecido la conexión</h2>";
}

?>