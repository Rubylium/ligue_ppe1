<?php

class Salle
{
    private $id;


    public function __construct($id, $nom, $photo, $capacite)
    {
        $this->id = $id;
    }

    public function getId()
    {
        return $this->id;
    }
}
