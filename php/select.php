<?php
    // echo "Funcionando"; por esta impresión, no estaba funcionando el select asi que mejor lo comenté.


    function obtenerNivel(){
        include "conex.php";

        $consultaNivel = "SELECT * FROM nivel";
        $result = mysqli_query($enlace, $consultaNivel);

        $json = array();

        while($row = mysqli_fetch_array($result)){
            $json[] = array(
                'idNivel' => $row['id_nivel'],
                'nomNivel' => $row['nom_nivel'],
            );
        }

        $jsonString = json_encode($json);
        echo $jsonString;
    }

    
    obtenerNivel();


?>