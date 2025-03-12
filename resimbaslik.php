<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resim Yönetimi</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #1a2a6c, #b21f1f, #fdbb2d);
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            text-align: center;
            margin-bottom: 40px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .header h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 1.1em;
            opacity: 0.9;
        }

        .location-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .location-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
        }

        .location-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.2);
        }

        .location-link {
            display: flex;
            align-items: center;
            justify-content: space-between;
            text-decoration: none;
            color: white;
            padding: 15px;
            border-radius: 10px;
            transition: background 0.3s ease;
        }

        .location-link:hover {
            background: rgba(255, 255, 255, 0.1);
        }

        .location-info {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .location-icon {
            font-size: 24px;
            color: #fdbb2d;
        }

        .location-name {
            font-size: 1.1em;
            font-weight: 500;
        }

        .image-count {
            background: rgba(253, 187, 45, 0.2);
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 0.9em;
            font-weight: 500;
        }

        .back-btn {
            position: fixed;
            top: 20px;
            left: 20px;
            padding: 10px 20px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            text-decoration: none;
            border-radius: 20px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .back-btn:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 2em;
            }

            .container {
                padding: 10px;
            }

            .location-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <a href="admin.php" class="back-btn">
        <i class="fas fa-arrow-left"></i> Admin Paneline Dön
    </a>

    <div class="container">
        <div class="header">
            <h1>Resim Yönetimi</h1>
            <p>Onay bekleyen resimleri olan konumlar aşağıda listelenmiştir</p>
        </div>

        <div class="location-grid">
            <?php
            error_reporting(0);
            $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");

            $sorgu = $db->query("SELECT DISTINCT k.id, k.baslik, COUNT(r.id) as resim_sayisi 
                                FROM konumlar k 
                                INNER JOIN resimler r ON k.id = r.marker_id 
                                WHERE r.durum = 0 
                                GROUP BY k.id, k.baslik 
                                ORDER BY k.baslik");

            foreach($sorgu->fetchAll(PDO::FETCH_ASSOC) as $row) {
                echo '<div class="location-card">';
                echo '<a href="resimonay2.php?id=' . $row["id"] . '&baslik=' . urlencode($row["baslik"]) . '" class="location-link">';
                echo '<div class="location-info">';
                echo '<i class="fas fa-image location-icon"></i>';
                echo '<span class="location-name">' . $row["baslik"] . '</span>';
                echo '</div>';
                echo '<span class="image-count">' . $row["resim_sayisi"] . ' resim</span>';
                echo '</a>';
                echo '</div>';
            }
            ?>
        </div>
    </div>
</body>
</html> 