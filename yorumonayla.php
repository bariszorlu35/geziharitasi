<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

try {
    $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $yorum_id = $_POST['yorum_id'];
    $konum_id = $_POST['konum_id'];

    
    $sorgu = $db->prepare("UPDATE yorumlar SET durum = 1 WHERE id = :yorum_id");
    $sorgu->execute(['yorum_id' => $yorum_id]);

    
    header("Location: yorumliste.php?id=" . $konum_id . "&baslik=" . urlencode($_GET['baslik']));
    exit();

} catch(PDOException $e) {
    echo "Hata: " . $e->getMessage();
    echo "<br><a href='javascript:history.back()'>Geri Dön</a>";
}
?>