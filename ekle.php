<?php
$servername = "localhost";
$username = "root";
$password = "";

$x =$_POST['enlem'];
$y = $_POST['boylam']; 
$yorum = $_POST['yorum'];
$db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");
$ekle = $db->query("INSERT INTO konumlar (enlem,boylam,durum,yorum) values('$x','$y','0','$yorum')");
    if($ekle){
        echo "oldu";
    }
    else{
        echo "olmadı";
    }
header("location:index.php");
?>