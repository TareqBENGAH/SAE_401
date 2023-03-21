<?php

require_once "vue/vue.class.php";
require_once "modele/cadeaux.class.php";

class CtlCadeau{
    private $cadeau;

    public function __construct(){
        $this->cadeau = new cadeau();
    }

    public function cadeau(){
        $vue=new vue("cadeaux");
        $vue->afficher(array());
    }

    public function EnregCadeau($value_cadeau, $id_client){
        $new_carte=$this->cadeau->enregCadeau($value_cadeau, $id_client);

    }

}