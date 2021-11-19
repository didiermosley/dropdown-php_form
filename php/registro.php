<?php

include ("conex.php");

//hacemos llamado al imput de formuario
if(isset($_POST['email'])){
    $usuario = $_POST['usuario'];
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];
}

        //verificamos la conexion a base datos
if(!$connection) 
        {
            echo "No se ha podido conectar con el servidor" . mysql_error();
        }
  else
        {
            echo "<b><h3>Hemos conectado al servidor</h3></b>" ;
        }
        //indicamos el nombre de la base datos
        $datab = "laboratorio3";
        //indicamos selecionar ala base datos
        $db = mysqli_select_db($connection,$datab);

        if (!$db)
        {
        echo "No se ha podido encontrar la Tabla";
        }
        else
        {
        echo "<h3>Tabla seleccionada:</h3>" ;
        }
        //insertamos datos de registro al mysql xamp, indicando nombre de la tabla y sus atributos
        $instruccion_SQL = "INSERT INTO usuario (usuario, nombre,email, foto)
                             VALUES (?,?,?,?)";
                            //  Usare foto como telefono ya que no insertaremos foto esta vez.
                           
                            
        $resultado = mysqli_query($connection,$instruccion_SQL);

        //$consulta = "SELECT * FROM tabla where id ='2'"; si queremos que nos muestre solo un registro en especifivo de ID
        $consulta = "SELECT
        usuario.id_usuario, usuario.nombre, usuario.apellido, usuario.email, usuario.telefono, nivel.nom_nivel, provincia.nom_provincia, distrito.nom_distrito
        FROM
        usuario
        INNER JOIN
        nivel
        ON
            usuario.id_nivel=nivel.id_nivel
        INNER JOIN
        distrito
        ON
            distrito.id_distrito = usuario.id_distrito
        INNER JOIN
        provincia
        ON
            provincia.id_provincia=distrito.id_provincia";
        
$result = mysqli_query($connection,$consulta);
if(!$result) 
{
    echo "No se ha podido realizar la consulta";
}
echo "<table class='tabla'>";
echo "<tr>";
echo "<th>ID</th>";
echo "<th>Nombre</th>";
echo "<th>Apellido</th>";
echo "<th>Email</th>";
echo "<th>Teléfono</th>";
echo "<th>Tipo de Usuario</th>";
echo "<th>Provincia</th>";
echo "<th>Distrito</th>";


echo "</tr>";

while ($colum = mysqli_fetch_array($result))
 {
    echo "<tr>";
    echo "<td>" . $colum['id']. "</td>";
    echo "<td>" . $colum['nombre']. "</td>";
    echo "<td>" . $colum['apellido'] . "</td>";
    echo "<td>" . $colum['email'] . "</td>";
    echo "<td>" . $colum['telefono'] . "</td>";
    echo "<td></td>";
    echo "<td></td>";
    echo "<td></td>";
    echo "</tr>";
}
echo "</table>";

mysqli_close( $connection );

   


?>