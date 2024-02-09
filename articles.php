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

// Récupération des données : exemples
include('include/select.php');
$articles = select_articles($pdo, $id);

$senteurs = select_senteurs($pdo);
$origines = select_origines($pdo);
$couleurs = select_couleurs($pdo);
$collections = select_collections($pdo);
$saisons = select_saisons($pdo);
$quantite_panier = select_quantite_panier($pdo);


// Lancement du moteur Twig avec les données
echo $twig->render('articles.twig', [
    'articles' => $articles,

    'senteurs' => $senteurs,
    'origines' => $origines,
    'couleurs' => $couleurs,
    'collections' => $collections,
    'saisons' => $saisons,
    'quantite_panier' => $quantite_panier,
]);