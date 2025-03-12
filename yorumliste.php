<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yorum Onaylama Sistemi</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
        
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #1a2a6c, #b21f1f, #fdbb2d);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            color: white;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: white;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .yorum-table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 20px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }

        .yorum-table th, 
        .yorum-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .yorum-table th {
            background: rgba(0,0,0,0.2);
            font-weight: 600;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 1px;
        }

        .yorum-table tr:hover {
            background: rgba(255,255,255,0.05);
        }

        .yorum-table td {
            font-size: 14px;
        }

        .onay-btn {
            background: linear-gradient(135deg, #1a2a6c, #b21f1f);
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .sil-btn {
            background: linear-gradient(135deg, #ff416c, #ff4b2b);
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-left: 5px;
        }

        .onay-btn:hover {
            background: linear-gradient(135deg, #b21f1f, #fdbb2d);
            transform: translateY(-2px);
        }

        .sil-btn:hover {
            background: linear-gradient(135deg, #ff4b2b, #ff416c);
            transform: translateY(-2px);
        }

        .button-group {
            display: flex;
            gap: 5px;
        }

        .geri-btn {
            display: inline-block;
            padding: 10px 20px;
            background: linear-gradient(135deg, #1a2a6c, #b21f1f);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: all 0.3s ease;
            text-align: center;
            margin-top: 20px;
        }

        .geri-btn:hover {
            background: linear-gradient(135deg, #b21f1f, #fdbb2d);
            transform: translateY(-2px);
        }

        .tarih {
            font-size: 12px;
            color: rgba(255,255,255,0.7);
        }
    </style>
</head>
<body>
    <div class="container">
        <?php
        $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");

        $konum_id = $_GET['id'];
        $baslik = $_GET['baslik'];

        echo "<h1>$baslik - Onay Bekleyen Yorumlar</h1>";

        $sorgu = $db->prepare("SELECT * FROM yorumlar WHERE marker_id = :konum_id AND durum = 0 ORDER BY id DESC");
        $sorgu->execute(['konum_id' => $konum_id]);
        
        echo '<table class="yorum-table">';
        echo '<thead>';
        echo '<tr>';
        echo '<th>Ad Soyad</th>';
        echo '<th>Yorum</th>';
        echo '<th>İşlem</th>';
        echo '</tr>';
        echo '</thead>';
        echo '<tbody>';

        foreach($sorgu->fetchAll(PDO::FETCH_ASSOC) as $yorum) {
            echo '<tr>';
            echo '<td>' . $yorum['ad'] . ' ' . $yorum['soyad'] . '</td>';
            echo '<td>' . $yorum['yorum'] . '</td>';
            echo '<td class="button-group">';
            echo '<form method="POST" action="yorumonayla.php" style="display: inline;">';
            echo '<input type="hidden" name="yorum_id" value="' . $yorum['id'] . '">';
            echo '<input type="hidden" name="konum_id" value="' . $konum_id . '">';
            echo '<button type="submit" class="onay-btn">Onayla</button>';
            echo '</form>';
            echo '<form method="POST" action="yorumsil.php" style="display: inline;">';
            echo '<input type="hidden" name="yorum_id" value="' . $yorum['id'] . '">';
            echo '<input type="hidden" name="konum_id" value="' . $konum_id . '">';
            echo '<button type="submit" class="sil-btn" onclick="return confirm(\'Bu yorumu silmek istediğinizden emin misiniz?\')">Sil</button>';
            echo '</form>';
            echo '</td>';
            echo '</tr>';
        }

        echo '</tbody>';
        echo '</table>';

        echo '<a href="yorumbaslik.php" class="geri-btn">Geri Dön</a>';
        ?>
    </div>
</body>
</html>
