<?php
function controleurPrincipal($action)
{
    $lesActions = array();
    $lesActions["defaut"] = "accueil.php";
    $lesActions["accueil"] = "accueil.php";
    $lesActions["salles"] = "afficheSalle.php";
    $lesActions["acceuilLogin"] = "accueilLogin.php";
    $lesActions["login"] = "login.php";
    $lesActions["session"] = "session.php";
    $lesActions["ajout"] = "ajoutPoste.php";
    $lesActions["ajoutValide"] = "ajoutPosteValide.php";

    if (array_key_exists($action, $lesActions)) {
        return $lesActions[$action];
    } else {
        return $lesActions["defaut"];
    }
}