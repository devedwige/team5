<?php
try{
    $dbd = new PDO('mysql:host=localhost;dbname=forum_1;charset=utf8;', 'root', '');
}catch(Exception $e){
    die('Une erreur a été trouvée : ' . $e->getMessage());
}
