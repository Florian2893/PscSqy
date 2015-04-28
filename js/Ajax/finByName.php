<?php include"../../php/connexion.php"; ?>

<?php
    // récuperer le matricule entier
    $q = $_REQUEST["q"];
    $q = $q.'%';

    if(strlen($q)>2)
    {//apreès une lettre de saisie commencer la recherche
        //chercher le nom dans la table User_Table par matricule   
        $res=$mysqli->query("SELECT  `matricule` ,  `Nom` ,  `Prenom` ,  `Libelle_UG` ,  `Service`.`Libelle_service` ,  `Type_Agent` 
            FROM  `User_Table` ,  `Service` ,  `UG` ,  `Type_Agent` 
            WHERE  `User_Table`.`id_service` =  `Service`.`id_service` 
            AND  `Service`.`Id_UG` =  `UG`.`Id_UG` 
            AND  `User_Table`.`Id_Type_Agent` =  `Type_Agent`.`Id_Type_Agent` 
            AND  `nom` LIKE  '" ."$q". "'" );


        if($mysqli->affected_rows==1){
            echo(1);
            $row=$res->fetch_array(MYSQLI_ASSOC);
            echo($row['matricule'].','.$row['Nom'].','.$row['Prenom'].','.$row['Libelle_UG'].','.$row['Libelle_service'].','.$row['Type_Agent']);

        }
        elseif($mysqli->affected_rows==0){
            echo(0);
            echo('Ce nom n\'existe pas!');

        }
        else{
            echo(2);
            while($row=$res->fetch_array(MYSQLI_ASSOC)){            
                echo ($row['Nom'].','.$row['Prenom'].';');
            }

        }

    }
    

    

    //retourner la taille de résultat de recherche, si c'est 0, le matricule est unique OK, sinon KO
    // if(sizeof($row) >0)
    // {// le matricule est correcte, retourne le nom, prenom, ug, service, regime pour autorempir
    // 	echo($row['Nom'].','.$row['Prenom'].','.$row['Libelle_UG'].','.$row['Libelle_service'].','.$row['Type_Agent']);
    // }

    
?>
