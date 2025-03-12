
<html>


<?php
$servername = "localhost";
$username = "root";
$password = "";


    $ad = $_POST['ad'];
    $soyad = $_POST['soyad'];
    $yorum = $_POST['yorum'];
    $marker_id = $_POST['markerid'];

    $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");
    $ekle = $db->query("INSERT INTO yorumlar (marker_id,yorum,durum,ad,soyad) values('$marker_id','$yorum','0','$ad','$soyad')");
    if($ekle){
        echo "Yorum başarıyla eklendi.";
    }else{
        echo "Yorum eklenirken bir hata oluştu.";
    }
    header("location:resimler.php?id_cek=".$marker_id);
?>

</html>