<?php

require_once("modele/Manager.php");
require_once("modele/Salle.php");

class SalleManager extends Manager
{
    // public function get($id) //instancie un objet bateau
    // {
    //     $id = (int) $id;
    //     $q = $this->getPDO()->query('SELECT id, nom, photo FROM bateau WHERE id = ' . $id);
    //     $donnees = $q->fetch(PDO::FETCH_ASSOC);
    //     return new Bateau($donnees['id'], $donnees['nom'], $donnees['photo']);
    // }

    public function getList() //instancie une collection d'objets bateau
    {

        $capacite = [];
        $q = $this->getPDO()->query('SELECT id, nom, photo FROM bateau ORDER BY nom');


        while ($donnees = $q->fetch(PDO::FETCH_ASSOC)) {
            $capacite = [];
            $b = $this->getPDO()->query("SELECT lettreCategorie, capaciteMax FROM contenance_bateau WHERE idBateau = " . $donnees['id']);

            while ($donnee = $b->fetch(PDO::FETCH_ASSOC)) {
                $capacite[$donnee['lettreCategorie']] = [
                    $donnee['capaciteMax'],
                ];
            }

            $bateaux[$donnees['id']] = new Salle($donnees['id'], $donnees['nom'], $donnees['photo'], $capacite);
        }
        return $bateaux;
    }
}
