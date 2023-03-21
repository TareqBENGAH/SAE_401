<?php

require_once "vue/vue.class.php";
require_once "modele/cadeaux.class.php";

class CtlCadeau{
    private $cadeau;

    public function __construct(){
        $this->aventure = new cadeau();
    }

    public function cadeau(){
        $vue=new vue("cadeaux");
        $vue->afficher(array());
    }

}