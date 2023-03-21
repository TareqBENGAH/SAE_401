<?php
require_once "modele/database.class.php";

/***************************************************************
Classe chargée de la gestion des clients dans la base de données
***************************************************************/
class cadeau extends database {

     /*******************************************************
  Affiche dans le gabarit la vue correspondant à l'action demandée
    Entrée : 
      
  
    Retour : 
        affichage de la page cadeau      
  *******************************************************/
    public function EnregCadeau(){
      $req="INSERT INTO `carte_cadeau` ('carte_id',carte_client_id',carte_value') VALUES (1,1,1);";
      $cadeaux = $this->execReq($req);
      var_dump($cadeaux);
    }



}