<!-- SGR_depart_ARH -->

<?php include"php/connexion.php"; ?>


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
				if( $('#matricule').val().substr(0, 4)!='GL00' || $('#matricule').val().length <= 11) {
					$('#span-matricule').removeClass("error").addClass("error_show");
					nb_err++;
				}
				else{
					$('#span-matricule').removeClass("erro_show").addClass("error");
				}
				alert(nb_err);
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
			function chercheParGloo(str)
			{
				var str=str.toUpperCase();
				document.getElementById("matricule").value=str;

				var len = str.length;
				if(len == 11)
				{//quand il y a 11 caratères, le matricule est complet, commencer la recherche

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
		    				var reponse = xmlhttp.responseText.split(",");
		    				//la partie d'autocomplir
		    				$(function(){
		    					$('#nom').val(reponse[0]);
		    					$('#ug').val(reponse[1]);
		    					$('#service').val(reponse[2]);
		    				})
		    			}
		  			}
					xmlhttp.open("GET","js/Ajax/finByGLOO.php?q="+str,true);
					xmlhttp.send();
				}

			}
		</script>

		<script>
			function chercheParNom(str)
			{
				var str = replaceSpec(str.toUpperCase());
				document.getElementById("nom").value=str;

				//la partie pour la proposition
			    $("#nom").autocomplete({
				    source : "js/Ajax/finByName.php?q="+str,
				    minLength: 2,
        			select: function(event,ui){
        				var donnees = ui.item.desc.split(",");
        				$('#matricule').val(donnees[0]);
		    			$('#ug').val(donnees[3]);
		    			$('#service').val(donnees[4]);		    			
        			}
				});				
			}
		</script>

		<script>
			function saisirDateretraite(str)
			{
				if(str == "MD04"){
					$('.date-picker-retraite').css('display','block');

					
				}
				else{
					$('.date-picker-retraite').css('display','none');

				}

			}
		</script>




	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouveau départ</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Saisie d'un nouveau départ</h2>

		<div class="formulaire">
	 		<form action="">
				<p class="section-form">
					<label for="matricule">Matricule <span id="span-matricule" class="error">(Erreur: ce matricule n'est pas correcte)</span>
						<span id="span-matricule2" class="error">(Erreur: celui n'exsite pas!)</span></label>
					<input type="text" class="defaut editable" id="matricule" value="GL00" maxlength="11" onkeyup="chercheParGloo(this.value);">
				</p>
				<p class="section-form">	
					<label for="nom" id="label-nom">Nom <span id="span-nom" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<input type="text" class="defaut editable" id="nom" onkeyup="chercheParNom(this.value);">
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
					<label for="date-depart">Date de départ du PSC <span id="span-date-depart" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<input type="text" class="defaut editable" id="date-depart">
				</p>
				<p class="section-form">	
					<label for="motif-depart">Motif de départ <span id="span-modif" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<select type="text" class="defaut liste" id="motif-depart" onchange="saisirDateretraite(this.value);">
						<option value="" disabled="disabled" selected="selected">Sélectionner le motif de départ</option>
						<?php 
							$resUG=$mysqli->query("SELECT `Id_modif`, `Modifi_lebelle` FROM `Motif_depart`" );
							while ($rowUG=$resUG->fetch_array (MYSQLI_ASSOC) )
							{
								echo '<option value="'.$rowUG['Id_modif'].'"';
								echo '>'.$rowUG['Modifi_lebelle'].'</option>';
							}
						?>
					</select>
				</p>
				<p class="section-form date-picker-retraite">
					<label for="date-depart">Date de départ à la retraite <span id="span-date-retraite" class="error">(Erreur: ce champ est obligatoire)</span></label>
					<input type="text" class="defaut editable" id="date-depart-retraite">
				</p>
				<p class="section-form">
					<label for="commentaire">Commentaire</label>
					<textarea class="textarea-comment" name="" id="commentaire" maxlength="200"></textarea>
				</p>
				<div class="clear"></div>
				<p class="section-form">
					<button type="button" class="btn_defaut valider" onclick="verifierChamps();">Valider<span class="puce puce-droite">&#xf2f6;</span></button>
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
	
	