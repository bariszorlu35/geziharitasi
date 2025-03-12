<?php
try {
    $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    
    $resim_adi = null;
    if(isset($_FILES['resim']) && $_FILES['resim']['error'] == 0) {
        $izin_verilen_uzantilar = array("jpg", "jpeg", "png");
        $dosya_uzantisi = strtolower(pathinfo($_FILES['resim']['name'], PATHINFO_EXTENSION));
        
        if(in_array($dosya_uzantisi, $izin_verilen_uzantilar)) {
            $resim_adi = uniqid() . "." . $dosya_uzantisi;
            move_uploaded_file($_FILES['resim']['tmp_name'], "resimler/" . $resim_adi);
        }
    }

    
    $sql = "INSERT INTO konumlar (baslik, aciklama, enlem, boylam, resim, durum) VALUES (?, ?, ?, ?, ?, 0)";
    $stmt = $db->prepare($sql);
    $stmt->execute([
        $_POST['baslik'],
        $_POST['aciklama'],
        $_POST['enlem'],
        $_POST['boylam'],
        $resim_adi
    ]);

    
    echo "<script>
        alert('Öneriniz başarıyla kaydedildi. İncelendikten sonra onaylanacaktır.');
        window.location.href = 'index.php';
    </script>";

} catch(PDOException $e) {
    
    echo "<script>
        alert('Bir hata oluştu: " . $e->getMessage() . "');
        window.location.href = 'index.php';
    </script>";
}
?> 