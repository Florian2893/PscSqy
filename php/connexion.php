<?php

	//connexion à la base de donées
	$mysqli = new mysqli("localhost", "root", "root", "PSC_SGR");

	/* check connection */
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}

	//traitement de lettres avec acents
	if (!$mysqli->set_charset("utf8")) {
    	printf("Erreur d'encodage de caractères utf8 : %s\n", $mysqli->error);
	} 


 ?>