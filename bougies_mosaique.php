<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();



if(isset($_GET['senteurs'])) {$idsenteur = (implode(",",$_GET['senteurs']));} else $idsenteur = 0;
if(isset($_GET['couleurs'])) {$idcouleur = (implode(",",$_GET['couleurs']));} else $idcouleur = 0;
if(isset($_GET['collections'])) {$idcollection = (implode(",",$_GET['collections']));} else $idcollection = 0;


// Récupération des données : exemples
include('include/select.php');
$bougies = select_bougies($pdo);
$select_filtre_bougies = select_filtre_bougies($pdo,$idsenteur,$idcouleur,$idcollection);


$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$couleurs = select_couleurs($pdo);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);
$quantite_panier = select_quantite_panier($pdo);





// Lancement du moteur Twig avec les données
echo $twig->render('bougies_mosaique.twig', [
    'bougies' => $bougies,
    'select_filtre_bougies' => $select_filtre_bougies,



    'senteurs' => $senteurs,
    'origines' => $origines,
    'couleurs' => $couleurs,
    'collections' => $collections,
    'saisons' => $saisons,
    'quantite_panier' => $quantite_panier,
]);
