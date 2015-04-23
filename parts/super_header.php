<div id="super-header">
	<!-- Notification SGR -->
	<div class="notif" alt="notification SGR">&#xf39f;<span class="nombre-notif">2</span></div>
</div>

<script type="text/javascript">
	/*function alert_notif(){ 
		$('.nombre-notif').css('background-color','#ff0000').delay(20).css('background-color','#000000'); 
	}

	$(function(){
		if($('.nombre-notif').css('display','block')){
			setInterval('alert_notif()',3000); 
		}
	})*/

function FaireClignoterImage (){ 
   $(".nombre-notif").fadeOut(900).delay(300).fadeIn(800); 
} 
$(document).ready(function(){ 
    setInterval('FaireClignoterImage()',2200); 
});
</script>