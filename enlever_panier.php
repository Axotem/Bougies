<?php
// Get the form data
$page_id = $_POST['id_bougie'];
$quantite = $_POST['quantite'];

// Create a PDO connection to the database
include('include/connexion.php');
$pdo = connexion();

// Prepare the SQL statement
$sql = "DELETE FROM Panier WHERE id_bougie = :id_bougie AND quantite = :quantite";

$stmt = $pdo->prepare($sql);

// Bind the form data to the SQL parameters
$stmt->bindParam(':id_bougie', $page_id);
$stmt->bindParam(':quantite', $quantite);

// Execute the SQL statement
$stmt->execute();

// Redirect back to the form page or to a thank you page
header("Location: paniers.php");
exit();
?>