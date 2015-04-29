<?php include"../../php/connexion.php"; ?>

<?php
    // récuperer le matricule entier
    $q = $_REQUEST["q"];

    //chercher le nom dans la table User_Table par matricule   
    $res=$mysqli->query("SELECT `Nom`, `Prenom`,`Libelle_UG`, `Service`.`Libelle_service`, `Type_Agent` 
		from `User_Table`,`Service`,`UG`,`Type_Agent` 
		where `User_Table`.`id_service` = `Service`.`id_service` 
		and `Service`.`Id_UG` = `UG`.`Id_UG`
		and `User_Table`.`Id_Type_Agent` = `Type_Agent`.`Id_Type_Agent`
		and `matricule` = '" ."$q". "' " );
    $row=$res->fetch_array (MYSQLI_ASSOC);

    //retourner la taille de résultat de recherche, si c'est 0, le matricule est unique OK, sinon KO
    if(sizeof($row) >0)
    {// le matricule est correcte, retourne le nom, prenom, ug, service, regime pour autorempir

        $prenom=mb_substr($row["Prenom"],0,1).mb_strtolower(mb_substr($row["Prenom"],1,strlen($row["Prenom"])));
        $name = $row['Nom'] ." ".$prenom;

    	echo($name.','.$row['Libelle_UG'].','.$row['Libelle_service'].','.$row['Type_Agent']);
    }

    
?>
