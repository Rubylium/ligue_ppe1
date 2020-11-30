<?php

require_once("modele/Manager.php");
require_once("modele/Salle.php");

class SalleManager extends Manager
{

    public function getList() //instancie une collection d'objets Salle
    {

        $q = $this->getPDO()->query('SELECT nSalle, nomSalle, nbPoste, indIP FROM salle');

        $salles = [];
        while ($donnees = $q->fetch(PDO::FETCH_ASSOC)) {

            $salles[$donnees['nSalle']] = new Salle($donnees['nSalle'], $donnees['nomSalle'], $donnees['nbPoste'], $donnees['indIP']);
        }
        return $salles;
    }
}
