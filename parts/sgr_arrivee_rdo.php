	<div id="div-rdo" class="right-part-form">
			<fieldset class="recap-profil">
				<legend>Récapitulatif</legend>
				<div class="info1">
					<div class="type-info">Civilité : <span class="donnes-recap" id="civilite"></span></div><br>
					<div class="type-info">Nom : <span class="donnes-recap" id="nom"></span></div><br>
					<div class="type-info">Prénom : <span class="donnes-recap" id="prenom"></span></div><br>
					<div class="type-info">Date d'arrivée : <span class="donnes-recap" id="date-darrive"></span></div><br>
				</div>
				<div class="info1">
					<div class="type-info">UG : <span class="donnes-recap" id="ug"></span></div><br>
					<div class="type-info">Service : <span class="donnes-recap" id="service"></span></div><br>
					<div class="type-info">Matricule : <span class="donnes-recap" id="matricule"></span></div><br>
					<div class="type-info">Type agent : <span class="donnes-recap" id="type-agent"></span></div><br>
				</div>
				<div class="type-info recap-comment">Commentaire de l'ARH : <span class="donnes-recap" id="commentaire-arh"></span></div>
			</fieldset>

			<div class="formulaire-sgr-rdo">
		 		<form action="">
					
						<label for="ref-loc">Référence de localisation</label>
						<select type="text" class="defaut liste" id="ref-loc">
							<option value="" disabled="disabled" selected="selected">Sélectionner une référence de localisation</option>
						</select>	
						
						<label for="habi-maia">Habilitation MAIA</label>
						<select type="text" class="defaut liste" id="habi-maia" oncharge="">
							<option value="" disabled="disabled" selected="selected">Sélectionnez un type de profil MAIA</option>
						</select>
					
						<fieldset class="recap-droit-maia-hidden">
							<legend>Récapitulatif</legend>
								<ul class="list-droit-maia">
									<li class="info-droit-maia">ASM - MISE A JOUR ASCOPAR</li>
								</ul>
						</fieldset>

						<label for="commentaire">Commentaire</label>
						<textarea class="textarea-comment" name="" id="commentaire" maxlength="200"></textarea><br>
					
						<button type="submit" class="btn_defaut valider">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
						<button type="reset" class="nostyle reset-form">Réinitialiser les champs</button>
				</form>
			</div>
		</div>