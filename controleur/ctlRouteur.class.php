<?php

class ctlRouteur{

    public function Routage(){
        try{
            if(isset($_GET["action"])){
                switch($_GET["action"]){
                    case "aventures":
                        require "vue/vue_aventure.php";
                        break;
                    case "cadeaux":
                        require "vue/vue_cadeaux.php";
                        break;
                    case "faq":
                        require "vue/vue_faq.php";
                        break;
                    case "contact":
                        require "vue/vue_contact.php";
                        break;
                    default:
                        require "vue/vue_accueil.php";
                        break;
                }
            }
            else
                // require "vue/vue_accueil.php";
                require "vue/gabarit.php";
            
        }
        catch (Exception $e){
            echo $e->getMessage();
        }
    }
}