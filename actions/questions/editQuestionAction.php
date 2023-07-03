<?php

require('actions/database.php');

//Validation du formulaire
if(isset($_POST['validate'])){

    //Vérifier si les champs sont remplis
    if(!empty($_POST['titre']) AND !empty($_POST['description']) AND !empty($_POST['contenu'])){

        //Les données à faire passer dans la requête
        $new_question_titre = htmlspecialchars($_POST['titre']);
        $new_question_description = nl2br(htmlspecialchars($_POST['description']));
        $new_question_contenu = nl2br(htmlspecialchars($_POST['contenu']));
        
        //Modifier les informations de la question qui possède l'id rentré en paramètre dans l'URL
        $editQuestionOnWebsite = $dbd->prepare('UPDATE question SET titre = ?, description = ?, contenu = ? WHERE id = ?');
        $editQuestionOnWebsite->execute(array($new_question_titre, $new_question_description, $new_question_contenu, $idOfQuestion));

        //Redirection vers la page d'affichage des questions de l'utilisateur
        header('Location: my-questions.php');

    }else{
        $errorMsg = "Veuillez compléter tous les champs...";
    }

}