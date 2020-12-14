<?php

class Users
{
    private $id;
    private $level;
    private $name;
    private $password;
    private $email;



    public function __construct($id, $level, $name, $password, $email)
    {
        $this->$id = $id;
        $this->$level = $level;
        $this->$name = $name;
        $this->$password = $password;
        $this->$email = $email;
    }

    public function getid()
    {
        return $this->id;
    }

    public function getlevel()
    {
        return $this->level;
    }

    public function getname()
    {
        return $this->name;
    }

    public function getpassword()
    {
        return $this->password;
    }

    public function getemail()
    {
        return $this->email;
    }
}
