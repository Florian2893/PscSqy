<div id="languette" onclick="ouvrir_panneau();">&#xf2ca;</div>
<div id="container-notif-admin">
	<ul>
		<li>Test</li>
		<li>Test</li>
		<li>Test</li>
		<li>Test</li>
		<li>Test</li>
		<li>Test</li>
		<li>Test</li>
		<li>Test</li>
	</ul>
</div>

<script>
	function ouvrir_panneau(){
		if ($('#container-notif-admin').css('right')=='-200px'){
			$('#container-notif-admin').css('right','0');
			$('#languette').css('right','200px');
			$('#languette').html('&#xf30f;');
		}
		else{
			$('#container-notif-admin').css('right','-200px');
			$('#languette').css('right','0');
			$('#languette').html('&#xf2ca;');
		}
	}
</script>