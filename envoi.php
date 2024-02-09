<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();


$email = htmlspecialchars(stripcslashes(strip_tags($_POST['email'])));

// Récupération des données : exemples
include('include/select.php');
ajout_mail($pdo, $email);



header("Location: index.php");
exit();