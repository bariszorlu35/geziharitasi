<?php

$x=$_POST["marker_id"];


header("content-type:text/html;charset=utf-8");
$fotoadi= $_FILES["resim"]["name"];
$uzanti= $_FILES["resim"]["type"];
$size= $_FILES["resim"]["size"];
$kaynak= $_FILES["resim"]["tmp_name"];
$hedef="galeri/";
$yukle=move_uploaded_file($kaynak,$hedef.$fotoadi);

$db=new PDO("mysql:host=localhost;dbname=deneme;","root","");
if ($fotoadi!="") {
$ekle=$db->query("INSERT INTO resimler (marker_id,resim,durum) values('$x','$fotoadi','0')");
}

header("location:resimler.php?id_cek=$x");
?>