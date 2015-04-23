<div id="super-header">
	<!-- Notification SGR -->
	<span class="notif" alt="notification SGR">&#xf39f;<span class="nombre-notif">2</span></span>
	<span class="notif" alt="notification SGR">&#xf39f;<span class="nombre-notif">2</span></span>
</div>

<script type="text/javascript">
	function FaireClignoterImage (){ 
		$(".nombre-notif").fadeOut(900).delay(300).fadeIn(800); 
	} 
	$(document).ready(function(){ 
		setInterval('FaireClignoterImage()',2200); 
	});
</script>