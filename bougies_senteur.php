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
$bougies_senteur = select_bougies_senteur($pdo, $id);
$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$nb_articles_senteurs = select_nb_articles_senteurs($pdo,$id);

$couleurs = select_couleurs($pdo);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);
$quantite_panier = select_quantite_panier($pdo);



// Lancement du moteur Twig avec les données
echo $twig->render('bougies_senteur.twig', [
    'bougies_senteur' => $bougies_senteur,
    'senteurs' => $senteurs,
    'origines' => $origines,
    'nb_articles_senteurs' => $nb_articles_senteurs,

    'couleurs' => $couleurs,
    'collections' => $collections,
    'saisons' => $saisons,
    'quantite_panier' => $quantite_panier,
]);
