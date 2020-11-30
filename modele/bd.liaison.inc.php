<?php

include_once "bd.inc.php";

function getBateaux()
{
    $resultat = array();

    try {
        $cnx = getPDO();
        $req = $cnx->prepare("SELECT * FROM bateau");
        $req->execute();

        $ligne = $req->fetch(PDO::FETCH_ASSOC);
        while ($ligne) {
            $resultat[$ligne['id']]['nom'] = $ligne['nom'];
            $resultat[$ligne['id']]['photo'] = $ligne['photo'];
            $resultat[$ligne['id']]['capacites'] = getCapacitesByBateau($ligne['id']);
            $resultat[$ligne['id']]['liaisons'] = getLiaisonsByBateau($ligne['id']);
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
        }
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat;
}


if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    // prog principal de test
    header('Content-Type:text/plain');
}
