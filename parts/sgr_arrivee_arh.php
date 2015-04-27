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


				var str=str.toUpperCase();
				document.getElementById("matricule").value=str;
				

				//message d'erreur
				//var arr = ' \(Erreur: Ce matricule existe déjà\)';
				//la taille de matricule est bonne, commencer le traitement
				var len = str.length;
				if(len == 11)
				{//quand il y a 11 caratères, le matricule est complet, commencer la vérification
					var xmlhttp; 
					//récuperer label d'affichage
					//var chaine_label;
					//var label_matricule = document.getElementById("label-matricule").innerHTML;
					//chaine_labe = label_matricule.toString();
					//new XMLSerializer().serializeToString(label_matricule); 					
					//var aff_err =chaine_labe.indexOf(arr,0);
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
		    					$('#span-matricule2').removeClass("error").addClass("error_show");
		    					$('#valide_ARG_Arrive').attr('disabled','disabled');
								/*if(aff_err<0)
		    					{//ajouter le message d'erreur qu'une seule fois
		    						$(function(){
		    							$('#label-matricule').append(arr).css('color','red');
		    							$('#valide_ARG_Arrive').attr('disabled','disabled');
		    						})
		    					}*/
		    				}
		    				else
		    				{//le matricule est bon
		    					$('#span-matricule2').removeClass("erro_show").addClass("error");
		    					$('#valide_ARG_Arrive').removeAttr('disabled');
		    					/*if(aff_err>0)
		    					{//remettre le champs de matricule au normal
		    						$(function(){
		    							$('#label-matricule').css('color','#873D67');
		    							$('#label-matricule').empty();
		    							$('#label-matricule').append('Matricule');
		    							$('#valide_ARG_Arrive').removeAttr('disabled');
		    						})
		    					}*/
		    				}
		    			}
		  			}
					xmlhttp.open("GET","js/Ajax/verifierGLOO.php?q="+str,true);
					xmlhttp.send();
				}

			}
		</script>
		<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>

		<script>
			function maxLengthTextarea(str){
				if(str.length>=200){
					document.getElementById("commentaire").value=str.substring(0,200);
					alert('Votre commentaire ne peut pasdépasser 200 caratères!');
				}
			}
		</script>

		<script>
			TabSpec={À:'A',Á:'A',Â:'A',Ã:'A',Ä:'A',Å:'A',à:'a',á:'a',â:'a',ã:'a',ä:'a',å:'a',Ò:'O',Ó:'O',Ô:'O',Õ:'O',Ö:'O',Ø:'O',ò:'o',ó:'o',ô:'o',õ:'o',ö:'o',ø:'o',È:'E',É:'E',Ê:'E',Ë:'E',è:'e',é:'e',ê:'e',ë:'e',Ç:'C',ç:'c',Ì:'I',Í:'I',Î:'I',Ï:'I',ì:'i',í:'i',î:'i',ï:'i',Ù:'U',Ú:'U',Û:'U',Ü:'U',ù:'u',ú:'u',û:'u',ü:'u',ÿ:'y',Ñ:'N',ñ:'n'};
			 
			function replaceSpec(Texte){
				var reg=/([ÀÁÂÒÓÔÕÖØòÒÓÔÕÖØòóôõöøÈÉÊËèéêëÇçÌÍÎÏìíîïÙÚÛÜùúûüÿÑñ])/g
				Texte=Texte.replace(reg,function(){return TabSpec[arguments[1]];})
				return Texte
			 }   
		</script>

		<script>
			function verifierChamps(){
				//compteur d'erreur, si égale 0 sans erreur
				var nb_err = 0; 

				//pour controler tous les select 
				$("select option:selected").each(function (){
					if( $(this).val().length === 0){
						$(this).parent().siblings().children().removeClass("error").addClass("error_show");
						nb_err++;
					}
					else{
						$(this).parent().siblings().children().removeClass("erro_show").addClass("error");
					}
				})

				//pour controler tous les input
				$("input").each(function(){
					if($(this).val().length <3) {
						$(this).siblings().children().removeClass("error").addClass("error_show");
						nb_err++;
					}
					else{
						$(this).siblings().children().removeClass("erro_show").addClass("error");
					}

				})

				//contoler le matricule				
				if( $('#matricule').val().substr(0, 4)!='GL00' || $('#matricule').val().length != 11) {
					$('#span-matricule').removeClass("error").addClass("error_show");
					nb_err++;
				}
				else{
					$('#span-matricule').removeClass("erro_show").addClass("error");
				}

				//alert(nb_err);

				if(true)
				{//il n'y a pas d'erreurs dans le formulaire donc l'insertion dans base de données 
					var date_arrive = $("#date-arrive").val();
					var matricule = $("#matricule").val();
					var civilite = $("#civilite").val();
					var nom = $("#nom").val();
					var prenom = $("#prenom").val();
					var ug = $("#ug").val();
					var service = $("#service").val();
					var type_agent = $("#type-agent").val();
					var regime = $("#regime").val();
					var commentaire = $("#commentaire").val();

					//créer un chaine pour envyer par ajax
					var dataString = "date_arrive1=" + date_arrive+
				    				"&matricule1="+ matricule +
				    				"&civilite1="+ civilite +
				    				"&nom1="+ nom +"&prenom1="+ prenom +
				    				"&ug1="+ ug +"&service1="+ service +
				    				"&type_agent1="+ type_agent+"&regime1="+ regime +
				    				"&commentaire1="+ commentaire;

					//alert(dataString);
					//partie ajax pour 
					$.ajax({
					url: "php/arrivant_ARH.php",
					type: "POST",
					data: dataString,

					success: function(resulat_php){
						alert(resulat_php);
					}
				});
 

				}
			}

		</script>

		<script>
			
		</script>

	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouvel Arrivant</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisie d'un nouvel arrivant</h2>

		<div class="formulaire">
	 		<form>
				<p class="section-form">
					<label for="date-arrive">Date d'arrivée <span id="span-date-arrive" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<input type="text" class="defaut editable" id="date-arrive">
				</p>
				<p class="section-form">
					<label for="matricule" id="label-matricule">Matricule <span id="span-matricule" class="error">(Erreur: ce matricule n'est pas correcte)</span>
						<span id="span-matricule2" class="error">(Erreur: celui exsite déjà)</span></label>
					<input type="text" class="defaut editable" id="matricule" value="GL00" maxlength="11" onkeyup="checkGloo(this.value);">
				</p>
				<p class="section-form">
					<label for="civilite">Civilité <span id="span-civilite" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<select type="text" class="defaut liste civilite-arh" id="civilite">
						<option value="" disabled="disabled" selected="selected">Sélectionner la civilité</option>
						<option value="M.">Monsieur</option>
						<option value="Mme">Madame</option>
					</select>
				<p class="section-form">	
					<label for="nom" id="label-nom">Nom <span id="span-nom" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<input type="text" class="defaut editable nom-arh" id="nom" onkeyup='this.value=replaceSpec(this.value.toUpperCase())'>
				</p>
				<p class="section-form">	
					<label for="prenom">Prénom <span id="span-prenom" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<input type="text" class="defaut editable prenom-arh" id="prenom" onkeyup='this.value=replaceSpec(this.value.toUpperCase())'>
				</p>
				<p class="section-form">
					<label for="ug">UG <span id="span-ug" class="error">(Erreur: ce champ est obligatoire)</span></label>
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
					<label for="service">Service <span id="span-service" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<select type="text" class="defaut liste" id="service">
						<option value="" disabled="disabled" selected="selected">Sélectionner un service</option>
					</select>
				</p>
				<p class="section-form">
					<label for="type-agent">Type agent <span id="span-type-agent" class="error">(Erreur: ce champ est obligatoire)</span></label>
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
					<label for="regime">Régime de travail <span id="span-regime" class="error">(Erreur: ce champ est obligatoire)</span></label>
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
					<button type="button" class="btn_defaut valider" id="valide_ARG_Arrive" onclick="verifierChamps();">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
					<button type="reset" class="nostyle reset">Réinitialiser les champs</button>
					
					<!-- <a href="#" id="test">TEST</a> -->
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
	
	