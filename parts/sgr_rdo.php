<!-- SGR_arrivee_RDO -->

<?php include"php/connexion.php"; ?>


<script>
	// function chargerDonnes(){

	// 	//en fonction de la ligne cliquée, charger deux pages différentes:
	// 	//var action = $('#action-rdo').text();
	// 	alert('zz');

		

	// 	$(this).addClass('selected');
	// 	//$(this).siblings().removeClass('selected');

	// 	// $(this).closest('tr').addClass('selected');


	// 	//var action = $('.selected').closest('tr').find('td:eq(2)').text();
	// 	var action = $(this).find('td:eq(2)').text();

	// 	alert(action);
		

	// 	// var action_bd_1 = "<?php 
	// 	// 						$resOperation=$mysqli->query("SELECT `libelle_operation` FROM `SGR_operation` WHERE `id_operation`=1" ); 
	// 	// 						$rowOperation=$resOperation->fetch_array (MYSQLI_ASSOC);
	// 	// 						echo($rowOperation['libelle_operation']);
	// 	// 					?>";
	// 	// if(action==action_bd_1)
	// 	// {
	// 	// 	alert('ici nouvel arrivant');

	// 	// }
	// 	// else{
	// 	// 	alert('la ');
	// 	// }
		


	// 	// $('#ug').html('dfsdfsdfds');
	// }
	$(function() {
		var action='';
		//récuperer le nom d'opération dans la base de données
		var action_bd_1 = "<?php 
							$resOperation=$mysqli->query("SELECT `libelle_operation` FROM `SGR_operation` WHERE `id_operation`=1" ); 
							$rowOperation=$resOperation->fetch_array (MYSQLI_ASSOC);
	 						echo($rowOperation['libelle_operation']);
	 					?>";

			$('tr').click(function() {
				if ($(this).hasClass('')) {
					//1-- Ajouter la classe pour l'affichage
					$(this).addClass('selected');
					$(this).siblings().removeClass('selected');
					//2-- récuperer l'opération dans le tableau à gauche
					action = $(this).find('td:eq(2)').text();
					//3-- en fonction d'opération charcher la partie de droit de page
					if(action==action_bd_1)
					{
						$('#p-rdo').remove();
						$('#div-rdo').load('parts/sgr_arrivee_rdo.php');
						var matr = $(this).find('td:eq(3)').text();

						$.ajax({
							url: "php/arrivant_rdo.php",
							type: "POST",
							data: {data:matr},
							success: function(str_res){
								// 0-civilité, 1-nom, 2-prenom, 3-UG, 4-service, 5-matricule, 6-type-agent
								var infor = str_res.split(",");
								if(infor[0].indexOf("M.") >= 0){
									$('#civilite').text("Monsieur");
								}
								else{
									$('#civilite').text("Madame");
								}
								$('#nom').text(infor[1]);
								$('#prenom').text(infor[2]);
								$('#ug').text(infor[3]);
								$('#service').text(infor[4]);
								$('#matricule').text(infor[5]);
								$('#type-agent').text(infor[6]);
							}
						});

						
					}
					else
					{
						$('#p-rdo').remove();
						$('#div-rdo').load('parts/sgr_mouvement_rdo.php');
						var matr = $(this).find('td:eq(3)').text();

						$.ajax({
							url: "php/arrivant_rdo.php",
							type: "POST",
							data: {data:matr},

							success: function(str_res){
								// 0-civilité, 1-nom, 2-prenom, 3-UG, 4-service, 5-matricule, 6-type-agent
								var infor = str_res.split(",");
								if(infor[0].indexOf("M.") >= 0){
									$('#civilite').text("Monsieur");
								}
								else{
									$('#civilite').text("Madame");
								}
								$('#nom').text(infor[1]);
								$('#prenom').text(infor[2]);
								$('#ug').text(infor[3]);
								$('#service').text(infor[4]);
								$('#matricule').text(infor[5]);
								$('#type-agent').text(infor[6]);

							}
						});
					}

				}
			});
		});
</script>



	<div class="conteneur-page">

		<div id="fil-ariane">Applications > SGR > Nouvel Arrivant</div> <!--  FIL D'ARIANE -->
 
		<h1 class="titre-section">Système de Gestion des Ressources</h1>

		<h2 class="titre-partie-section">Traitement du personnel</h2>

		<div class="left-part-table">
			<table class="selection" cellspacing="0" id="table-profil">
				<tr>
					<th>Nom</th>
					<th>Service</th>
					<th>Action</th>
					<th style="display:none">Matricule</th>
				</tr>
				<?php
					$resList=$mysqli->query("SELECT  `Nom` ,  `Prenom` ,  `Libelle_service` ,  `libelle_operation` ,`User_Table`.`matricule` as matr
						FROM  `SGR` ,  `User_Table` ,  `SGR_operation` ,  `Service` 
						WHERE  `SGR`.`matricule` =  `User_Table`.`matricule` 
						AND  `SGR`.`id_operation` =  `SGR_operation`.`id_operation` 
						AND  `User_Table`.`id_service` =  `Service`.`Id_service` 
						AND `SGR`.`id_operation`!='3' " );
					while ($rowList=$resList->fetch_array (MYSQLI_ASSOC) )
					{
						$prenom=mb_substr($rowList["Prenom"],0,1).mb_strtolower(mb_substr($rowList["Prenom"],1,strlen($rowList["Prenom"])));
        				$name = $rowList['Nom'] ." ".$prenom;
        				//echo '<tr onclick="chargerDonnes();">';
        				echo '<tr>';
						echo '<td>'.$name.'</td>';
						echo '<td>'.$rowList['Libelle_service'].'</td>';
						echo '<td>'.$rowList['libelle_operation'].'</td>';
						echo '<td style="display:none">'.$rowList['matr'].'</td>';
						echo '</tr>';
					}
				?>
			</table>
		</div>

		<div id="div-rdo" class="right-part-form">
			<p id="p-rdo" class="consigne-rdo">
			 	Sélectionnez le profil à traiter.
			</p>
			
		</div>
	</div>	