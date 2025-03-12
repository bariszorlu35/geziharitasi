<?php
$id = $_POST['id'];
$enlem = $_POST['enlem'];
$boylam = $_POST['boylam'];
$baslik = $_POST['baslik'];
$aciklama = $_POST['aciklama'];
$filename = $_FILES['resimyukle']['name'];
$filetmpname = $_FILES['resimyukle']['tmp_name'];
$folder = 'resimler/';

$baglanti = new PDO("mysql:host=localhost;dbname=deneme", "root", "");
    $baglanti->exec("SET NAMES utf8");
    $baglanti->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if($_POST['degis'] == 'GÜNCELLE'){
    $sonuc = $baglanti->exec("UPDATE `konumlar` SET `baslik`='$baslik' ,`resim`='$filename',`aciklama`='$aciklama' WHERE `id`='$id'");
}
elseif($_POST['sil'] == 'SİL'){
    $sonuc = $baglanti->exec("DELETE FROM `konumlar` WHERE `konumlar`.`id` = $id");
}
header("location:konumlar.php");

?>

