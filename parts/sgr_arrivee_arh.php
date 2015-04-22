<!-- SGR_arrivee_ARH -->


<?php include"php/connexion.php"; ?>

		<script>
			function findService(str)
			{
				var xmlhttp;
				if (window.XMLHttpRequest)
	  			{// code for IE7+, Firefox, Chrome, Opera, Safari
	  				xmlhttp=new XMLHttpRequest();
	  			}
				else
	  			{// code for IE6, IE5
	  				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  			}
				xmlhttp.onreadystatechange=function()
	  			{
	  				if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    			{
	    				var arr = xmlhttp.responseText;
	    				$(function(){$('#service').html(arr);})	    				
	    			}
	  			}
				xmlhttp.open("GET","js/Ajax/getService.php?q="+str,true);
				xmlhttp.send();
			}
		</script>

		<script>
			function charcheRegime(str)
			{				
				var xmlhttp; 				
				if (window.XMLHttpRequest)
	  			{// code for IE7+, Firefox, Chrome, Opera, Safari
	  				xmlhttp=new XMLHttpRequest();	  			}
				else
	  			{// code for IE6, IE5
	  				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  			}
				xmlhttp.onreadystatechange=function()
	  			{
	  				if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    			{
	    				var arr = xmlhttp.responseText;
	    				$(function(){$('#regime').html(arr);})
	    				//alert(document.getElementById("regime").innerHTML);
	    			}
	  			}
				xmlhttp.open("GET","js/Ajax/getRegime.php?q="+str,true);

				xmlhttp.send();
			}
		</script>		

		<script>
			function checkGloo(str)
			{
				//message d'erreur
				var arr = ' \(Erreur: Le matricule doublon\)';
				//la taille de matricule est bonne, commencer le traitement
				var len = str.length;
				if(len == 11)
				{//quand il y a 11 caratères, le matricule est complet, commencer la vérification
					var xmlhttp; 
					//récuperer label d'affichage
					var chaine_label;
					var label_matricule = document.getElementById("label-matricule").innerHTML;
					chaine_labe = label_matricule.toString();
					//new XMLSerializer().serializeToString(label_matricule); 					
					var aff_err =chaine_labe.indexOf(arr,0);
					if (window.XMLHttpRequest)
		  			{// code for IE7+, Firefox, Chrome, Opera, Safari
		  				xmlhttp=new XMLHttpRequest();
		  			}
					else
		  			{// code for IE6, IE5
		  				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  			}
					xmlhttp.onreadystatechange=function()
		  			{
		  				if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    			{
		    				var resVerifier = xmlhttp.responseText;
		    				if(resVerifier!=0)
		    				{//le matricule saisi n'est pas unique
								if(aff_err<0)
		    					{//ajouter le message d'erreur qu'une seule fois
		    						$(function(){
		    							$('#label-matricule').append(arr).css('color','red');
		    							$('#valide_ARG_Arrive').attr('disabled','disabled');
		    						})
		    					}
		    				}
		    				else
		    				{//le matricule est bon
		    					if(aff_err>0)
		    					{//remettre le champs de matricule au normal
		    						$(function(){
		    							$('#label-matricule').css('color','#873D67');
		    							$('#label-matricule').empty();
		    							$('#label-matricule').append('Matricule');
		    							$('#valide_ARG_Arrive').removeAttr('disabled');
		    						})
		    					}
		    				}
		    			}
		  			}
					xmlhttp.open("GET","js/Ajax/verifierGLOO.php?q="+str,true);
					xmlhttp.send();
				}
			}
		</script>

		<script>
			function maxLengthTextarea(str){
				if(str.length>=200){
					document.getElementById("commentaire").value=str.substring(0,200);
					alert('Votre commentaire ne peut pasdépasser 200 caratères!');
				}
			}
		</script>

		<script>
			/*function verifierChamps(){
				var verifierDate = f
				}
			}*/
		</script>

		verifierChamps

	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouvel Arrivant</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisie d'un nouvel arrivant</h2>

		<div class="formulaire">
	 		<form action="arrivant_ARH.php" method="POST">
				<p class="section-form">
					<label for="date-arrive">Date d'arrivée</label>
					<input type="text" class="defaut editable" id="date-arrive">
				</p>
				<p class="section-form">
					<label for="matricule" id="label-matricule">Matricule</label>
					<input type="text" class="defaut editable" id="matricule" name="matricule" value="GL00" maxlength="11" onkeyup="checkGloo(this.value);">
				</p>
				<p class="section-form">
					<label for="civilite">Civilité</label>
					<select type="text" class="defaut liste civilite-arh" id="civilite">
						<option value="" disabled="disabled" selected="selected">Sélectionner la civilité</option>
						<option value="M.">Monsieur</option>
						<option value="Mme">Madame</option>
					</select>
				<p class="section-form">	
					<label for="nom" id="label-nom" >Nom</label>
					<input type="text" class="defaut editable" id="nom">
				</p>
				<p class="section-form">	
					<label for="prenom">Prénom</label>
					<input type="text" class="defaut editable" id="prenom">
				</p>
				<p class="section-form">
					<label for="ug">UG</label>
					<select type="text" class="defaut liste" id="ug" onchange="findService(this.value);">
						<option value="" disabled="disabled" selected="selected">Sélectionnez une UG</option>
						<?php 
							$resUG=$mysqli->query("SELECT `Id_UG`,`Libelle_UG` FROM `UG` " );
							while ($rowUG=$resUG->fetch_array (MYSQLI_ASSOC) )
							{
								echo '<option value="'.$rowUG['Id_UG'].'"';
								echo '>'.$rowUG['Libelle_UG'].'</option>';
							}
						?>
					</select>
				</p>
				<p class="section-form">
					<label for="service">Service</label>
					<select type="text" class="defaut liste" id="service">
						<option value="" disabled="disabled" selected="selected">Sélectionner un service</option>
					</select>
				</p>
				<p class="section-form">
					<label for="type-agent">Type agent</label>
					<select type="text" class="defaut liste" id="type-agent" onchange="charcheRegime(this.value);">
						<option value="" disabled="disabled" selected="selected">Sélectionner le type d'agent</option>
						<?php
							$resTypeAgen=$mysqli->query("SELECT `Id_Type_Agent`, `Type_Agent` FROM `Type_Agent` " );
							while ($rowTypeAgen=$resTypeAgen->fetch_array (MYSQLI_ASSOC) )
							{
								echo '<option value="'.$rowTypeAgen['Id_Type_Agent'].'"';
								echo '>'.$rowTypeAgen['Type_Agent'].'</option>';
							}
						?>
					</select>
				</p>
				<p class="section-form">	
					<label for="regime">Régime de travail</label>
					<select type="text" class="defaut liste" id="regime">
						<option value="" disabled="disabled" selected="selected">Sélectionner le régime de travail</option>
					</select>
				</p>
				<p class="section-form">
					<label for="commentaire">Commentaire</label>
					<textarea class="textarea-comment" id="commentaire" maxlength="200" onkeyup="maxLengthTextarea(this.value);"></textarea>
				</p>
				<div class="clear"></div>
				<p class="section-form">
					<button type="submit" class="btn_defaut valider" id="valide_ARG_Arrive" onclick="verifierChamps();">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
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
	
	