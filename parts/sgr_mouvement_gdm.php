<!-- SGR_mouvement_GDM -->

	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Mouvement interne</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisi d'un mouvement interne</h2>

		<div class="left-part-table">
			<table class="selection" cellspacing="0">
				<tr>
					<th>Nom</th>
					<th>Service</th>
					<th>Action</th>
				</tr>
				<tr>
					<td>Giacomo Guilizzoni</td>
					<td>SUC</td>
					<td>Mouvement interne</td>
				</tr>
				<tr>
					<td>Giacomo Guilizzoni</td>
					<td>SUC</td>
					<td>Mouvement interne</td>
				</tr>
				<tr>
					<td>Giacomo Guilizzoni</td>
					<td>SUC</td>
					<td>Mouvement interne</td>
				</tr>
				<tr>
					<td>Giacomo Guilizzoni</td>
					<td>SUC</td>
					<td>Mouvement interne</td>
				</tr>
			</table>
			<a href="index.php?page=sgr_historique" class="btn-historique">Historique des impressions<span class="puce puce-gauche">&#xf2fd;</span></a>
		</div>

		<div class="right-part-form">
			<fieldset class="recap-profil">
				<legend>Récapitulatif</legend>
				<div class="info1">
					<div class="type-info">Civilité : </div>Test <br>
					<div class="type-info">Nom : </div>Test <br>
					<div class="type-info">Prénom : </div>Test <br>
					<div class="type-info">Date d'arrivée : </div>Test <br>
				</div>
				<div class="info1">
					<div class="type-info">UG : </div>Test <br>
					<div class="type-info">Service : </div>Test <br>
					<div class="type-info">Matricule : </div>Test <br>
					<div class="type-info">Type agent : </div>Test <br>
				</div>
				<div class="type-info recap-comment">Commentaire de l'ARH : </div> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis quasi quae quod tempora nostrum maxime in alias tempore, iusto? Aut, debitis recusandae nemo dicta sint, velit, vitae nisi harum be.
				<br>
				<div class="type-info recap-comment">Commentaire du RST : </div> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis quasi quae quod tempora nostrum maxime in alias tempore, iusto? Aut, debitis recusandae nemo dicta sint, velit, vitae nisi harum be.
			</fieldset>

			<div class="formulaire-sgr-rdo">
		 		<form action="">
					
						<label for="ref-loc">Référence de localisation</label>
						<select type="text" class="defaut liste autocomplete" id="ref-loc">
							<option value="" disabled="disabled" selected="selected">Sélectionner une référence de localisation</option>
							<option value=""></option>
						</select>	
						
						<label for="habi-maia">Habilitation MAIA</label>
						<select type="text" class="defaut liste autocomplete" id="habi-maia" oncharge="">
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
						
						<button class="btn_defaut btn-impression">Imprimer la fiche récapitulatif<span class="puce puce-droite">&#xf3a5;</span></button>
						<br>
						<button type="submit" class="btn_defaut valider">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
				</form>
			</div>
		</div>
	</div>	