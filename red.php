<?php
$servername = "localhost";
$username = "root";
$password = "";

$id = $_GET["id"];
echo "$id";
$idd = $_GET["idd"];
echo "$idd";
$baslik = $_GET["baslik"];

$db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");
$ekle = $db->query("DELETE FROM `yorumlar` WHERE id=$id");

header("location:yorumonay.php?id=$idd&baslik=$baslik");
?>