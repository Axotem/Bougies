<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les données GET sur l'URL
if (isset($_GET['id'])) $id = $_GET['id'];
$id = intval($id);

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();


include('include/select.php');
$bougies_collection = select_bougies_collection($pdo, $id);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);
$nb_articles_collections = select_nb_articles_collections($pdo,$id);

$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$couleurs = select_couleurs($pdo);
$quantite_panier = select_quantite_panier($pdo);


// Lancement du moteur Twig avec les données
echo $twig->render('bougies_collection.twig', [
    'bougies_collection' => $bougies_collection,
    'collections' => $collections,
    'saisons' => $saisons,
    'nb_articles_collections' => $nb_articles_collections,

    'senteurs' => $senteurs,
    'origines' => $origines,
    'couleurs' => $couleurs,
    'quantite_panier' => $quantite_panier,

]);


