<?php
include("./php/conex.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="./estilos/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;1,100;1,400;1,700&family=Open+Sans:ital,wght@0,300;0,400;1,500&display=swap" rel="stylesheet"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="flex">
    <div class="container">
        <!-- Form -->
        <h1>For<span class="white">mula</span><span class="red">rio</span></h1>
        <form action="#" method="POST" class="form flex" >
            <input type="text" name="nombre" placeholder="Nombre" class="input-item">
            <input type="text" name="apellido" placeholder="Apellido" class="input-item">
            <input type="email" name="email" placeholder="Email" class="input-item">
            <input type="text" name="telefono" placeholder="Teléfono" class="input-item">
            
            <label for="nivel" class="label">Tipo de usuario</label>
                <select name="nivel" id="nivel" class="select">
                </select>
                <br>
            <label for="provincia" class="label">Provincia</label>
                <select name="provincia" id="provincia" class="select">
                </select>
            <label for="distrito" class="label">Distrito</label>
                <select name="distrito" id="distrito" class="select">
                </select>
            <input type="submit" class="btn" name="registrarse" value="Enviar">
        </form>

        <!-- Table -->
        <table class="tabla">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Teléfono</th>
                <th>Tipo de Usuario</th>
                <th>Provincia</th>
                <th>Distrito</th>
            </tr>

            

        

        <?php
        include ("./php/registro2.php");

        $consulta = "SELECT usuario.id_usuario, usuario.nombre, usuario.apellido, usuario.email, usuario.telefono, nivel.nom_nivel, provincia.nom_provincia, distrito.nom_distrito
        FROM usuario 
        INNER JOIN nivel ON usuario.id_nivel=nivel.id_nivel 
        INNER JOIN distrito ON distrito.id_distrito = usuario.id_distrito 
        INNER JOIN provincia ON provincia.id_provincia=distrito.id_provincia; ";

        $ejecutarConsulta = mysqli_query($enlace, $consulta);
        $verFilas = mysqli_num_rows($ejecutarConsulta);
        $filas = mysqli_fetch_array($ejecutarConsulta);

        if(!$ejecutarConsulta){
            echo "Error en la consulta";
        }else{
            if($verFilas<1){
                echo "<td>No hay registros.</td>";
            }else{
                for($i=0;$i<=$filas;$i++){
                    echo '
                    <tr>
                        <td>'.$filas[0].'</td>
                        <td>'.$filas[1].'</td>
                        <td>'.$filas[2].'</td>
                        <td>'.$filas[3].'</td>
                        <td>'.$filas[4].'</td>
                        <td>'.$filas[5].'</td>
                        <td>'.$filas[6].'</td>
                        <td>'.$filas[7].'</td>
                    </tr>
                    ';
                $filas = mysqli_fetch_array($ejecutarConsulta);

                }
            }
        }
        ?>
        </table>


    </div>

    <div class="info">
        <span><b>Elaborado por:</b> Didier Mosley</span><br>
        <span><b>Cédula:</b> 8-936-1798</span><br>
        <span><b>Grupo:</b> 1LS131</span><br>
    </div>
    <script src="./js/script.js"></script>
</body>
</html>