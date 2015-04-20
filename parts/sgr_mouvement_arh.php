<!-- SGR_mouvement_ARH -->
	
	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Mouvement interne</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisie d'un mouvement interne</h2>

		<div class="formulaire">
	 		<form action="">
				<p class="section-form">
					<label for="matricule">Matricule</label>
					<input type="text" class="defaut editable" id="matricule" value="GL00" maxlength="11">
				</p>	
				<p class="section-form">	
					<label for="nom">Nom</label>
					<input type="text" class="defaut editable" id="nom">
				</p>
				<p class="section-form">	
					<label for="prenom">Prénom</label>
					<input type="text" class="defaut editable" id="prenom">
				</p>
				<p class="section-form">
					<label for="ug-depart">UG de départ</label>
					<input type="text"  class="defaut autocomplete" id="ug-depart">
				</p>
				<p class="section-form">
					<label for="service-depart">Service de départ</label>
					<input type="text" class="defaut autocomplete" id="service-depart">
				</p>
				<p class="section-form">
					<label for="type-agent">Type agent</label>
					<input type="text" class="defaut autocomplete" id="type-agent">
				</p>
				<p class="section-form">
					<label for="date-mouvement">Date de mouvement</label>
					<input type="text" class="defaut editable" id="date-mouvement">
				</p>
				<p class="section-form">
					<label for="new-ug">Nouvelle UG</label>
					<select type="text"  class="defaut liste" id="new-ug">
						<option value="" disabled="disabled" default="default">Sélectionner la nouvelle UG</option>
					</select>
				</p>
				<p class="section-form">
					<label for="new-service">Nouveau Service</label>
					<select type="text" class="defaut liste" id="new-service">
						<option value="" disabled="disabled" default="default">Sélectionner le nouveau service</option>
					</select>
				</p>
				<p class="section-form">	
					<label for="regime">Régime de travail</label>
					<select type="text" class="defaut liste" id="regime">
						<option value="" disabled="disabled" default="default">Sélectionner un régime de travail</option>
					</select>	
				</p>
				<p class="section-form">
					<label for="commentaire">Commentaire</label>
					<textarea class="textarea-comment" name="" id="commentaire" maxlength="200"></textarea>
				</p>
				<div class="clear"></div>	
				<p class="section-form">
					<button type="submit" class="btn_defaut valider">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
					<button type="reset" class="nostyle reset">Réinitialiser les champs</button>
				</p>
				<div class="clear"></div>	
			</form>
		</div>
	</div>	