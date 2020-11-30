<?php

class Salle
{
    private $nSalle;
    private $nomSalle;
    private $nbPoste;
    private $indIP;
    private $area_id;
    private $room_name;
    private $sort_key;
    private $description;
    private $capacity;


    public function __construct($nSalle, $nomSalle, $nbPoste, $indIP, $area_id, $room_name, $sort_key, $description, $capacity)
    {
        $this->nSalle = $nSalle;
        $this->nomSalle = $nomSalle;
        $this->nbPoste = $nbPoste;
        $this->indIP = $indIP;
        $this->area_id = $area_id;
        $this->room_name = $room_name;
        $this->sort_key = $sort_key;
        $this->description = $description;
        $this->capacity = $capacity;
    }

    public function getarea_id()
    {
        return $this->area_id;
    }

    public function getroom_name()
    {
        return $this->room_name;
    }

    public function getsort_key()
    {
        return $this->sort_key;
    }

    public function getdescription()
    {
        return $this->description;
    }

    public function getcapacity()
    {
        return $this->capacity;
    }

    public function getnSalle()
    {
        return $this->nSalle;
    }

    public function getnomSalle()
    {
        return $this->nomSalle;
    }

    public function getnbPoste()
    {
        return $this->nbPoste;
    }

    public function getindIP()
    {
        return $this->indIP;
    }
}
