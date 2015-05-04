<div id="languette" onclick="ouvrir_panneau();">&#xf2ca;</div>
<div id="container-notif-admin">
	<ul class="list-notif-admin">
		<h4 class="titre-notif-admin">Notification Administrateur</h4>
		<li class="notif-admin">Factures envoyées</li>
		<li class="notif-admin">Test</li>
		<li class="notif-admin">Test</li>
		<li class="notif-admin">Test</li>
		<li class="notif-admin">Test</li>
		<li class="notif-admin">Test</li>
		<li class="notif-admin">Test</li>
		<li class="notif-admin">Test</li>
	</ul>
</div>

<script>
	function ouvrir_panneau(){
		if ($('#container-notif-admin').css('right')=='-200px'){
			$('#container-notif-admin, #languette').animate({
				"right":"+=200"
			},"fast");
			$('#languette').html('&#xf30f;');
		}
		else{
			$('#container-notif-admin, #languette').animate({
				"right":"-=200"
			},"fast");
			$('#languette').html('&#xf2ca;');
		}
	}
</script>