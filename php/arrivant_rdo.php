<?php include"connexion.php"; ?>


<?php

	//récupéer le matricule dans la page de RDO
	$matiucle = $_POST['data']; 

	$requete = $mysqli->query(" SELECT `civilite`,`Nom`, `Prenom` ,`Libelle_UG`,`Libelle_service`,`matricule`,`Type_Agent`
		FROM `User_Table` NATURAL JOIN `SGR`, `UG` , `Service`, `Type_Agent`
		WHERE `Service`.`Id_UG` = `UG`.`Id_UG`
		AND `Service`.`Id_service` = `User_Table`.`Id_service`
		AND `User_Table`.`Id_Type_Agent`= `Type_Agent`.`Id_Type_Agent` 
		AND `User_Table`.`matricule`='" ."$matiucle". "'");

	$row=$requete->fetch_array(MYSQLI_ASSOC);

	//retourner des infromations pour Ajax
	// 0-civilité, 1-nom, 2-prenom, 3-UG, 4-service, 5-matricule, 6-type-agent
	echo($row['civilite'].','.
		$row['Nom'].','.
		$row['Prenom'].','.
		$row['Libelle_UG'].','.
		$row['Libelle_service'].','.
		$row['matricule'].','.
		$row['Type_Agent']);

 ?>