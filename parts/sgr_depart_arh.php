<!-- SGR_depart_ARH -->


<?php include"php/connexion.php"; ?>

	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouveau départ</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisie d'un nouveau départ</h2>

		<div class="formulaire">
	 		<form action="">
				<p class="section-form">
					<label for="matricule">Matricule</label>
					<input type="text" class="defaut editable" id="matricule" value="GL00" maxlength="11">
				</p>
				<p class="section-form">	
					<label for="nom" id="label-nom">Nom</label>
					<input type="text" class="defaut editable" id="nom">
				</p>
				<p class="section-form">
					<label for="ug">UG</label>
					<input type="text" class="defaut autocomplete" id="ug">
				</p>
				<p class="section-form">
					<label for="service">Service</label>
					<input type="text" class="defaut autocomplete" id="service">
				</p>
				<p class="section-form">
					<label for="date-depart">Date de départ du PSC</label>
					<input type="text" class="defaut editable" id="date-depart">
				</p>
				<p class="section-form">	
					<label for="motif-depart">Motif de départ</label>
					<select type="text" class="defaut liste" id="motif-depart">
						<option value="" disabled="disabled" selected="selected">Sélectionner le motif de départ</option>
					</select>
				</p>
				<p class="section-form date-picker-retraite">
					<label for="date-depart">Date de départ à la retraite</label>
					<input type="text" class="defaut editable" id="date-depart-retraite">
				</p>
				<p class="section-form">
					<label for="commentaire">Commentaire</label>
					<textarea class="textarea-comment" name="" id="commentaire" maxlength="200"></textarea>
				</p>
				<div class="clear"></div>
				<p class="section-form">
					<button type="submit" class="btn_defaut valider">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
					<button type="reset" class="nostyle reset">Réinitialiser les champs</button>
					<!-- <a href="#" id="test">TEST</a> -->
				</p>

				<div class="clear"></div>
			</form>
		</div>
	</div>
		<script>
			/*$('#test').click(function(){
				$('#label-nom').append(' (Erreur: Ce champ doit être rempli)').css('color','red');
				$('#nom').css('border-color','red');
			});*/

		</script>
	
	