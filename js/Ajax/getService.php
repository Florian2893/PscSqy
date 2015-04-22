<?php include"../../php/connexion.php"; ?>

<?php
    // récuperer l'id_UG
    $q = $_REQUEST["q"];

    //afficher le option
    echo '<option value=\"\" disabled=\"disabled\" selected=\"selected\">Sélectionner un service</option>';
    //chercher les services de cette UG
    $resService=$mysqli->query("SELECT `Id_service`, `Libelle_service` FROM `Service` WHERE `Id_UG` Like '" ."$q". "' " ) ;

    //afficher des choix 
    while($row=$resService->fetch_array (MYSQLI_ASSOC) )
    {
        echo '<option value="'.$row['Id_service'].'"';
        echo '>'.$row['Libelle_service'].'</option>';
    }
    
?>
