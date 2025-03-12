<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Paneli</title>
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

        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .menu-item {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
        }

        .menu-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.2);
        }

        .menu-item i {
            font-size: 2.5em;
            margin-bottom: 15px;
            color: white;
        }

        .menu-item h3 {
            color: white;
            margin-bottom: 15px;
            font-size: 1.2em;
            font-weight: 500;
        }

        .menu-item p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 0.9em;
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .menu-btn {
            display: inline-block;
            padding: 12px 25px;
            background: linear-gradient(135deg, #1a2a6c, #b21f1f);
            color: white;
            text-decoration: none;
            border-radius: 25px;
            transition: all 0.3s ease;
            font-weight: 500;
            border: none;
            cursor: pointer;
        }

        .menu-btn:hover {
            background: linear-gradient(135deg, #b21f1f, #fdbb2d);
            transform: translateY(-2px);
        }

        .logout-btn {
            position: fixed;
            top: 20px;
            right: 20px;
            padding: 10px 20px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            text-decoration: none;
            border-radius: 20px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .logout-btn:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .menu-grid {
                grid-template-columns: 1fr;
            }

            .header h1 {
                font-size: 2em;
            }

            .container {
                padding: 10px;
            }
        }
    </style>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Admin Paneli</h1>
            <p>Hoş geldiniz! Lütfen yapmak istediğiniz işlemi seçin.</p>
        </div>

        <div class="menu-grid">
            <div class="menu-item">
                <i class="fas fa-image"></i>
                <h3>Resim Onaylama</h3>
                <p>Kullanıcılar tarafından yüklenen resimleri görüntüleyin ve onaylayın.</p>
                <a href="resimonay.php" class="menu-btn">Resimleri Yönet</a>
            </div>

            <div class="menu-item">
                <i class="fas fa-comments"></i>
                <h3>Yorum Onaylama</h3>
                <p>Kullanıcı yorumlarını görüntüleyin, onaylayın veya silin.</p>
                <a href="yorumbaslik.php" class="menu-btn">Yorumları Yönet</a>
            </div>

            <div class="menu-item">
                <i class="fas fa-map-marker-alt"></i>
                <h3>Konum Yönetimi</h3>
                <p>Haritadaki konumları görüntüleyin ve düzenleyin.</p>
                <a href="adminpanel.php" class="menu-btn">Haritaya Git</a>
            </div>
        </div>
    </div>

    <a href="logout.php" class="logout-btn">
        <i class="fas fa-sign-out-alt"></i> Çıkış Yap
    </a>
</body>
</html>