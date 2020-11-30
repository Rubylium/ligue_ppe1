<?php

require_once("modele/Manager.php");
require_once("modele/Salle.php");

class SalleManager extends Manager
{

    public function getList() //instancie une collection d'objets Salle
    {

        $q = $this->getPDO()->query('SELECT nSalle, nomSalle, nbPoste, indIP, area_id, room_name, sort_key, description, capacity FROM salle INNER JOIN mrbs_room ON salle.id = mrbs_room.id');

        $salles = [];
        while ($donnees = $q->fetch(PDO::FETCH_ASSOC)) {

            $salles[$donnees['nSalle']] = new Salle($donnees['nSalle'], $donnees['nomSalle'], $donnees['nbPoste'], $donnees['indIP'], $donnees['area_id'], $donnees['room_name'], $donnees['sort_key'], $donnees['description'], $donnees['capacity']);
        }
        return $salles;
    }
}
