<?php 
include("connection.php");
$score = $conn->prepare("SELECT * from details");
$score->execute();
$details = $score->get_result();
?>

