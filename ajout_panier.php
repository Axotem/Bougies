<?php
// Get the form data
$page_id = $_POST['id_bougie'];
$quantite = $_POST['quantite'];

// Create a PDO connection to the database
include('include/connexion.php');
$pdo = connexion();

// Prepare the SQL statement
$sql = "INSERT INTO `Panier` (`id_bougie`, `quantite`) VALUES (:id_bougie, :quantite) on duplicate key update quantite = quantite + :quantite";
$stmt = $pdo->prepare($sql);

// Bind the form data to the SQL parameters
$stmt->bindParam(':id_bougie', $page_id);
$stmt->bindParam(':quantite', $quantite);

// Execute the SQL statement
$stmt->execute();

// Redirect back to the form page or to a thank you page
header("Location: ".$_GET['page']);
exit();
?>