<?php
function obtenerProvincia(){
    include "conex.php";

    $consultaProvincia = "SELECT * FROM provincia";
    $result2 = mysqli_query($enlace, $consultaProvincia);

    $json2 = array();

    while($row = mysqli_fetch_array($result2)){
        $json2[] = array(
            'idProv' => $row['id_provincia'],
            'nomProv' => $row['nom_provincia'],
        );
    }

    $jsonString2 = json_encode($json2);
    echo $jsonString2;
}

// Intente obtener todos los datos en un solo archivo pero tuve que dividirlos para obtener por GET o POST el JSON en cada archivo php individual. 


function obtenerDistrito($id_Provv){
    include "conex.php";
    $consultaDistrito = "SELECT * FROM distrito WHERE id_provincia=$id_Provv";
    $result3= mysqli_query($enlace, $consultaDistrito);

    $json3 = array();

    while($row = mysqli_fetch_array($result3)){
        $json3[] = array(
            'idDist' => $row['id_distrito'],
            'nomDist' => $row['nom_distrito'],
        );
    }

    $jsonString3= json_encode($json3);
    echo $jsonString3;
}

if(isset($_POST['idProvincia'])){
    $id_Provv = $_POST['idProvincia'];
    obtenerDistrito($id_Provv);
}else{
    obtenerProvincia();
}
 
// obtenerProvincia();
?>

