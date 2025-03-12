<?php
$servername = "localhost";
$username = "root";
$password = "";

    $konumlar = array(); 
    $conn = new PDO("mysql:host=$servername;dbname=deneme;charset=utf8", $username, $password);
    foreach($query = $conn->query("SELECT * FROM konumlar where durum=0", PDO::FETCH_ASSOC)as $row)
    $konumlar[] = $row;


    echo json_encode(array("konumlar" => $konumlar));
?>