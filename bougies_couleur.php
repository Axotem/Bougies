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
$bougies_couleur = select_bougies_couleur($pdo, $id);
$couleurs = select_couleurs($pdo);
$nb_articles_couleurs = select_nb_articles_couleurs($pdo,$id);

$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);
$quantite_panier = select_quantite_panier($pdo);



// Lancement du moteur Twig avec les données
echo $twig->render('bougies_couleur.twig', [
    'bougies_couleur' => $bougies_couleur,
    'couleurs' => $couleurs,
    'nb_articles_couleurs' => $nb_articles_couleurs,
    
    'senteurs' => $senteurs,
    'origines' => $origines,
    'collections' => $collections,
    'saisons' => $saisons,
    'quantite_panier' => $quantite_panier,

]);

