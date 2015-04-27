<?php include"connexion.php"; ?>


<?php

	//récupéer des données dans le formulaire
	$myarray = $_POST ; 

	//`matricule`, `Nom`,`Prenom` ,`civilite`,`mail`, `id_service`,`Id_Type_Agent`,`Id_Regime_Travail`, `Date_arrivee`,`Login`
	$matricule = $myarray['matricule1'];
	$nom = $myarray['nom1'];
	$prenom = $myarray['prenom1'];
	$civilite = $myarray['civilite1'];
	$mail = mb_strtolower($prenom) . '.' .mb_strtolower($nom) .'@socgen.com';
	$id_service = intval($myarray['service1']);
	$Id_Type_Agent = intval($myarray['type_agent1']);
	$Id_Regime_Travail = intval($myarray['regime1']);
	$Date_arrivee = $myarray['date_arrive1'];
	if(stripos($matricule, 'X')){
		//le GLoo commence il y a 'X'
		$Login = 'X'. mb_substr($matricule,5,10);
	}
	else{
		$Login = 'A'. mb_substr($matricule,4,-1);
	}



	//inserer dans la base de donées:
	
	//1---  dans User Table
	$oldTable=$mysqli->query("SELECT * from `User_Table`" );
  	$row_cnt = $oldTable->num_rows;	
  	//requete pour inserer dans la basde de données de User_Table
	$requete = $mysqli->query(" INSERT INTO `User_Table`(`matricule`, `Nom`, `Prenom`, `civilite`, `mail`, `id_service`, `Id_Type_Agent`, `Id_Regime_Travail`, `Date_arrivee`,`Login`)
		VALUES ('$matricule', '$nom','$prenom','$civilite','$mail','$id_service','$Id_Type_Agent','$Id_Regime_Travail','$Date_arrivee','$Login') ");
	//compter l'User_Table après l'insertion
	$newTable=$mysqli->query("SELECT * from `User_Table`" );
  	$row_cnt_new = $newTable->num_rows;	
  	//vérification 
  	if($row_cnt_new>$row_cnt)
  	{
  		echo(1);//le manupilation avec la base de donées est bonne
  	}
  	else{
  		echo(-1);
  	}
  	// SELECT * FROM `User_Table` 	 WHERE `matricule`='GL001234567'

  	//2---   dans le tableau de SGR

  	//à faire



    






 ?>