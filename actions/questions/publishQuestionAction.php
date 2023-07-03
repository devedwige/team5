<?php

require('actions/database.php');

//Valider le formulaire
if(isset($_POST['validate'])){

    //Vérifier si les champs ne sont pas vides
    if(!empty($_POST['titre']) AND !empty($_POST['description']) AND !empty($_POST['contenu'])){
        
        //Les données de la question
        $question_titre = htmlspecialchars($_POST['titre']);
        $question_description = nl2br(htmlspecialchars($_POST['description']));
        $question_contenu = nl2br(htmlspecialchars($_POST['contenu']));
        $question_date_publication = date('d/M/Y');
        $question_id_author = $_SESSION['id'];
        $question_pseudo_author = $_SESSION['pseudo'];

        //Insérer la question sur la question
        $insertQuestionOnWebsite = $dbd->prepare('INSERT INTO question(titre, description, contenu, id_auteur, pseudo_auteur, date_publication)VALUES(?, ?, ?, ?, ?, ?)');
        $insertQuestionOnWebsite->execute(
            array(
                $question_titre, 
                $question_description, 
                $question_contenu, 
                $question_id_author, 
                $question_pseudo_author ,
                $question_date_publication
            )
        );
        
        $successMsg = "Votre question a bien été publiée";
        
    }else{
        $errorMsg = "Veuillez compléter tous les champs...";
    }

}