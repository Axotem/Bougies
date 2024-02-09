<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();

// Récupération des données
include('include/select.php');
$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$couleurs = select_couleurs($pdo);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);
$quantite_panier = select_quantite_panier($pdo);


// Lancement du moteur Twig avec les données
echo $twig->render('base.twig', [
    'senteurs' => $senteurs,
    'origines' => $origines,
    'couleurs' => $couleurs,
    'collections' => $collections,
    'saisons' => $saisons,
    'quantite_panier' => $quantite_panier,
]);

