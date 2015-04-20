<!-- SGR_depart_GDM -->

	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouveau départ</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisi d'un nouveau départ</h2>

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
		</div>

		<div class="right-part-form">
			<fieldset class="recap-profil">
				<legend>Récapitulatif</legend>
				<div class="info1">
					<div class="type-info">Nom : </div>Test <br>
					<div class="type-info">Prénom : </div>Test <br>
					<div class="type-info">UG : </div>Test <br>
					<div class="type-info">Service : </div>Test <br>
				</div>
				<div class="info1">
					<div class="type-info">N° de badge : </div>Test <br>
					<div class="type-info">Motif de départ : </div>Test <br>
					<div class="type-info">Date de départ : </div>Test <br>
					<div class="type-info">Date de début de retraite : </div>Test <br>
				</div>
				<div class="type-info recap-comment">Commentaire de l'ARH : </div> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis quasi quae quod tempora nostrum maxime in alias tempore, iusto? Aut, debitis recusandae nemo dicta sint, velit, vitae nisi harum be.
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
						
						<button class="btn_defaut btn-impression">Imprimer la fiche récapitulatif<span class="puce puce-droite">&#xf3a5;</span></button>
						<br>
						<button type="submit" class="btn_defaut valider">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
				</form>
			</div>
		</div>
	</div>