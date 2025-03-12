<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resim Onay</title>
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

        .resim-table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 20px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }

        .resim-table th, 
        .resim-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .resim-table th {
            background: rgba(0,0,0,0.2);
            font-weight: 600;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 1px;
        }

        .resim-table tr:hover {
            background: rgba(255,255,255,0.05);
        }

        .resim-table td {
            font-size: 14px;
            vertical-align: middle;
        }

        .resim-onizleme {
            width: 150px;
            height: 100px;
            object-fit: cover;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }

        .onay-btn, .red-btn {
            background: linear-gradient(135deg, #1a2a6c, #b21f1f);
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin: 0 5px;
        }

        .onay-btn:hover {
            background: linear-gradient(135deg, #4CAF50, #45a049);
            transform: translateY(-2px);
        }

        .red-btn:hover {
            background: linear-gradient(135deg, #f44336, #da190b);
            transform: translateY(-2px);
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

        .button-group {
            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <?php
        $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");

        $konum_id = $_GET['id'];
        $baslik = $_GET['baslik'];

        echo "<h1>$baslik - Onay Bekleyen Resimler</h1>";

        $sorgu = $db->prepare("SELECT * FROM resimler WHERE marker_id = :konum_id AND durum = 0 ORDER BY id DESC");
        $sorgu->execute(['konum_id' => $konum_id]);
        
        echo '<table class="resim-table">';
        echo '<thead>';
        echo '<tr>';
        echo '<th>Resim</th>';
        echo '<th>Resim Adı</th>';
        echo '<th>İşlemler</th>';
        echo '</tr>';
        echo '</thead>';
        echo '<tbody>';

        foreach($sorgu->fetchAll(PDO::FETCH_ASSOC) as $resim) {
            echo '<tr>';
            echo '<td><img src="galeri/' . $resim['resim'] . '" class="resim-onizleme" alt="Resim"></td>';
            echo '<td>' . $resim['resim'] . '</td>';
            echo '<td class="button-group">';
            echo '<form method="POST" action="Ronay.php" style="display: inline;">';
            echo '<input type="hidden" name="resim_id" value="' . $resim['id'] . '">';
            echo '<input type="hidden" name="konum_id" value="' . $konum_id . '">';
            echo '<button type="submit" class="onay-btn">Onayla</button>';
            echo '</form>';
            echo '<form method="POST" action="ResimRed.php" style="display: inline;">';
            echo '<input type="hidden" name="resim_id" value="' . $resim['id'] . '">';
            echo '<input type="hidden" name="konum_id" value="' . $konum_id . '">';
            echo '<button type="submit" name="red" class="red-btn">Reddet</button>';
            echo '</form>';
            echo '</td>';
            echo '</tr>';
        }

        echo '</tbody>';
        echo '</table>';

        echo '<a href="resimbaslik.php" class="geri-btn">Geri Dön</a>';
        ?>
    </div>
</body>
</html>