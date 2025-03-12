<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['id']) && isset($_POST['aciklama'])) {
        $id = $_POST['id'];
        $aciklama = $_POST['aciklama'];
        $resim_adi = null;

        try {
            $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            if (isset($_FILES['resim']) && $_FILES['resim']['error'] == 0) {
                $resim = $_FILES['resim'];
                $tmp_name = $resim['tmp_name'];
                $org_name = $resim['name'];
                $resim_adi = uniqid() . '_' . $org_name;
                $hedef_yol = 'resimler/' . $resim_adi;

                if (!move_uploaded_file($tmp_name, $hedef_yol)) {
                    throw new Exception("Resim yüklenemedi!");
                }
            }

            $sql = "UPDATE konumlar SET aciklama = :aciklama";
            if ($resim_adi) {
                $sql .= ", resim = :resim";
            }
            $sql .= " WHERE id = :id";

            $stmt = $db->prepare($sql);
            $stmt->bindParam(':aciklama', $aciklama, PDO::PARAM_STR);
            if ($resim_adi) {
                $stmt->bindParam(':resim', $resim_adi, PDO::PARAM_STR);
            }
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);

            if ($stmt->execute()) {
                header("Location: adminpanel.php");
                exit;
            } else {
                echo "Konum güncellenirken bir hata oluştu.";
            }
        } catch (PDOException $e) {
            echo "Veritabanı hatası: " . $e->getMessage();
        } catch (Exception $e) {
            echo "Hata: " . $e->getMessage();
        }
    } else {
        echo "Geçersiz istek.";
    }
} else {
    echo "Geçersiz istek yöntemi.";
}
?> 