<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

try {
    
    $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    
    $resim_id = $_POST['resim_id'];
    $konum_id = $_POST['konum_id'];

    
    $sorgu = $db->prepare("UPDATE resimler SET durum = 1 WHERE id = :resim_id");
    $sorgu->execute(['resim_id' => $resim_id]);

   
    header("Location: resimonay2.php?id=" . $konum_id . "&baslik=" . urlencode($_GET['baslik']));
    exit();

} catch(PDOException $e) {
    echo "Veritabanı hatası: " . $e->getMessage();
    echo "<br><a href='javascript:history.back()'>Geri Dön</a>";
}
?>