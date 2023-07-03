<?php

require('actions/database.php');

$getAllAnswersOfThisQuestion = $dbd->prepare('SELECT id_auteur, pseudo_auteur, id_question, contenu FROM reponse WHERE id_question = ? ORDER BY id DESC');
$getAllAnswersOfThisQuestion->execute(array($idOfTheQuestion)); 