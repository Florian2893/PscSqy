<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/jquery-ui.min.css">
	<link rel="stylesheet" href="css/jquery-ui.structure.min.css">
	<link rel="stylesheet" href="css/jquery-ui.theme.min.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<title>Canal SQY</title>
</head>
<body>
<?php
	include "parts/notif-admin-test.php";
?>
<div id="container">
<?php 
$page= "";
include "parts/super_header.php";
include "parts/header.php";
?>

<?php //include"php/connexion.php"; ?>
	
<!-- CORPS DE PAGE -->

<?php

  if (!isset($_GET["page"]) || $_GET["page"] == "accueil") {
    $page = "accueil";
    include('parts/'.$page.'.php');
   }else{
   	$page=$_GET["page"];
    	include('parts/'.$page.'.php');
/*  } else if ($_GET["page"] == "test1") {
    $page = "sgr_arrivee_arh";
  } else if ($_GET["page"] == "test2") {
    $page = "sgr_arrivee_rdo";
  } else {*/
   
  }

  
 ?>

<!-- FIN CORPS DE PAGE -->
<div class="clear"></div>
<?php include "parts/footer.php" ; ?>
</div>


	<script type="text/javascript">
		$('document').ready(function(){
			$.datepicker.setDefaults($.datepicker.regional["fr"]);
			$('#date-arrive').datepicker({
				dateFormat : 'dd/mm/yy',
				minDate : +1
			});
			$('#date-mouvement').datepicker({
				dateFormat : 'dd/mm/yy',
				minDate : +1
			});
			$('#date-depart').datepicker({
				dateFormat : 'dd/mm/yy',
				minDate : +1
			});
			$('#date-depart-retraite').datepicker({
				dateFormat : 'dd/mm/yy',
				minDate : +1
			});
		})

		$(function() {
			$('tr').click(function() {
				if ($(this).hasClass('')) {
					$(this).addClass('selected');
					$(this).siblings().removeClass('selected');
				}
			});
		});
	</script>
</body>
</html>