<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les données GET sur l'URL
if (isset($_GET['id'])) $id = $_GET['id']; else $id = 0;

// Convertit l'identifiant en entier
$id = intval($id);

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();

// Récupération des données
include('include/select.php');
$panier = select_panier($pdo);
$total_panier = select_total_panier($pdo);
$quantite_panier = select_quantite_panier($pdo);

$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$couleurs = select_couleurs($pdo);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);




// Lancement du moteur Twig avec les données
echo $twig->render('panier.twig', [
    'panier' => $panier,
    'total_panier' => $total_panier,
    'quantite_panier' => $quantite_panier,

    'senteurs' => $senteurs,
    'origines' => $origines,
    'couleurs' => $couleurs,
    'collections' => $collections,
    'saisons' => $saisons,
]);