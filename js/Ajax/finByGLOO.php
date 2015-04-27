<?php include"../../php/connexion.php"; ?>

<?php
    // récuperer le matricule entier
    $q = $_REQUEST["q"];

    //chercher le nom dans la table User_Table par matricule
    $res=$mysqli->query("SELECT * from `User_Table` where `matricule` = '" ."$q". "' " ) ;
    $row=$res->fetch_array (MYSQLI_ASSOC);

    //retourner la taille de résultat de recherche, si c'est 0, le matricule est unique OK, sinon KO

    print_r($row['Nom']);
    
?>
