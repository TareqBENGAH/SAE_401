<?php
require_once "modele/database.class.php";

/***************************************************************
Classe chargée de la gestion des clients dans la base de données
***************************************************************/
class resa extends database {

    public function __constuct(){

    }

    public function GetResaClient($id_client){
        $req = 'SELECT * FROM resa WHERE resa_idclient=?;';   
        $resa =  $this->execReqPrep($req, array($id_client));
        if (!empty($resa)){
            return $resa;
        }
        else{
            return FALSE;
        }
      }
    }


