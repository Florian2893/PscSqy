<?php include"../../php/connexion.php"; ?>

<?php
    // get id_type_agen
    $q = $_REQUEST["q"];
    echo "<option value=\"\" disabled=\"disabled\" selected=\"selected\">Sélectionner le régime de travail</option>";
    
 
    if($q==2||$q==4||$q==6)
    {
        echo "<option value=\"1\">100%-Temps Plein</option>";
    }
    if($q==3||$q==5)
    {
        echo "<option value=\"4\">90%-35H Stage Etude / Auxiliaire Vacances</option>";
    }
    if($q==1)
    {
       
        $resRegime=$mysqli->query(" SELECT `Id_Regime_Travail`, `Regime_Travail` FROM `Regime_Travail` " );
        while ($rowRegime=$resRegime->fetch_array (MYSQLI_ASSOC) )
        {
             //$arr = $arr .'<option value=\"'.$rowRegime['Id_Regime_Travail'].'\" >'.$rowRegime['Regime_Travail'].'</option> ';
            //$arr= "<option value=\"1\">alalalala</option>";
            //$arr=$arr .$b;
            echo '<option value=\"'.$rowRegime['Id_Regime_Travail'].'"';
            echo '>'.$rowRegime['Regime_Travail'].'</option>';

        }
       

    }

    
    
?>
