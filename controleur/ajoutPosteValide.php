<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

session_start();
require_once("$racine/modele/InfoManager.php");
require_once("$racine/modele/PosteManager.php");



$infoManager = new InfoManager();
$posteManager = new PosteManager();

$allPoste = $posteManager->getList();




if ($infoManager->AddNewPoste($allPoste, $_POST["inputNum"], $_POST["inputNom"], $_POST["inputindIP"], $_POST["inputAd"], $_POST["inputType"], $_POST["inputnSalle"], $_POST["inputNbLog"])) {
    $titre = "Ajouter un poste <br> Poste ajouté !";
} else {
    $titre = "Le poste numéro " . strval($_POST["inputNum"]) . " éxiste déja !";
}

// appel du script de vue qui permet de gerer l'affichage des donnees
include "$racine/vue/header.php";
include "$racine/vue/vueAjouterPosteResult.php";
include "$racine/vue/footer.php";