<!-- SGR_arrivee_RDO -->

<?php include"php/connexion.php"; ?>

<script>
	// $(function(){
		
	// 	//alert($('#civilite').next().val());
	// })
	function chargerDonnes(){
		$('#ug').html('fdfd');
	}
</script>



	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouvel Arrivant</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisi d'un nouvel arrivant</h2>

		<div class="left-part-table">
			<table class="selection" cellspacing="0">
				<tr>
					<th>Nom</th>
					<th>Service</th>
					<th>Action</th>
				</tr>
				<tr onclick="chargerDonnes();">
					<td>aaa</td>
					<td>bbb</td>
					<td>ccc</td>
				</tr>
				<?php
					$resList=$mysqli->query("SELECT  `Nom` ,  `Prenom` ,  `Libelle_service` ,  `libelle_operation` 
						FROM  `SGR` ,  `User_Table` ,  `SGR_operation` ,  `Service` 
						WHERE  `SGR`.`matricule` =  `User_Table`.`matricule` 
						AND  `SGR`.`id_operation` =  `SGR_operation`.`id_operation` 
						AND  `User_Table`.`id_service` =  `Service`.`Id_service` " );
					while ($rowList=$resList->fetch_array (MYSQLI_ASSOC) )
					{
						$prenom=mb_substr($rowList["Prenom"],0,1).mb_strtolower(mb_substr($rowList["Prenom"],1,strlen($rowList["Prenom"])));
        				$name = $rowList['Nom'] ." ".$prenom;
        				echo '<tr onclick="chargerDonnes();">';
						echo '<td>'.$name.'</td>';
						echo '<td>'.$rowList['Libelle_service'].'</td>';
						echo '<td>'.$rowList['libelle_operation'].'</td>';
						echo '</tr>';
					}
				?>
			</table>
		</div>

		<div class="right-part-form">
			<fieldset class="recap-profil">
				<legend>Récapitulatif</legend>
				<div class="info1">
					<div class="type-info">Civilité : <span class="donnes-recap" id="civilite">Test</span></div><br>
					<div class="type-info">Nom : <span class="donnes-recap" id="nom">Test</span></div><br>
					<div class="type-info">Prénom : <span class="donnes-recap" id="prenom">Test</span></div><br>
					<div class="type-info">Date d'arrivée : <span class="donnes-recap" id="date-darrive">Test</span></div><br>
				</div>
				<div class="info1">
					<div class="type-info">UG : <span class="donnes-recap" id="ug">Test</span></div><br>
					<div class="type-info">Service : <span class="donnes-recap" id="service">Test</span></div><br>
					<div class="type-info">Matricule : <span class="donnes-recap" id="matricule">Test</span></div><br>
					<div class="type-info">Type agent : <span class="donnes-recap" id="type-agent">Test</span></div><br>
				</div>
				<div class="type-info recap-comment">Commentaire de l'ARH : <span class="donnes-recap" id="commentaire">Test</span></div>
			</fieldset>

			<div class="formulaire-sgr-rdo">
		 		<form action="">
					
						<label for="ref-loc">Référence de localisation</label>
						<select type="text" class="defaut liste" id="ref-loc">
							<option value="" disabled="disabled" selected="selected">Sélectionner une référence de localisation</option>
							<option value=""></option>
							<option value=""></option>
						</select>	
						
						<label for="habi-maia">Habilitation MAIA</label>
						<select type="text" class="defaut liste" id="habi-maia" oncharge="">
							<option value="" disabled="disabled" selected="selected">Sélectionnez un type de profil MAIA</option>
							<?php/*
								$resUG=$mysqli->query("SELECT `Id_UG`,`Libelle_UG` FROM `UG` " );
								while ($rowUG=$resUG->fetch_array (MYSQLI_ASSOC) )
								{
									echo '<option value="'.$rowUG['Id_UG'].'"';
									echo '>'.$rowUG['Libelle_UG'].'</option>';
								}*/
							?>
						</select>
					
						<fieldset class="recap-droit-maia">
							<legend>Récapitulatif</legend>
								<ul class="list-droit-maia">
									<li class="info-droit-maia">ASM - MISE A JOUR ASCOPAR</li>
									<li class="info-droit-maia">CONTACT - FILIERE PROS PME ET ASSIMILEES</li>
									<li class="info-droit-maia">CONTACT - SUPERVISION</li>
									<li class="info-droit-maia">EMAIL INDIVIDUEL - MESSAGERIE INTERNET</li>
									<li class="info-droit-maia">IEVOL - EVALUATION GROUPE</li>
									<li class="info-droit-maia">IIHR - INTERROGATION HISTORIQUE COMPTABLE OU NC SUPERVISEUR</li>
									<li class="info-droit-maia">IODP - ORCHESTRA CONSULTATION</li>
									<li class="info-droit-maia">IRCX - RECOUVREUR : RECOUVREMENT CONTENTIEUX</li>
									<li class="info-droit-maia">IRCX - RESPONSABLE : RECOUVREMENT CONTENTIEUX</li>
									<li class="info-droit-maia">ISAPI - CONSULTATION DU SUIVI DES PRODUITS SAISIS DANS ISAPI</li>
									<li class="info-droit-maia">MROD - DEMANDE IMAGES OPE DOM</li>
								</ul>
						</fieldset>

						<label for="commentaire">Commentaire</label>
						<textarea class="textarea-comment" name="" id="commentaire" maxlength="200"></textarea><br>
					
						<button type="submit" class="btn_defaut valider">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
						<button type="reset" class="nostyle reset-form">Réinitialiser les champs</button>
				</form>
			</div>
		</div>
	</div>	