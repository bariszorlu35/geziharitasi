<!DOCTYPE html>
<html>
  <head>
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"/>
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
        
        body, html {
        height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #f5f5f5;
        }

        .container {
            display: flex;
            flex-direction: column;
            height: 100vh;
            padding: 15px;
            box-sizing: border-box;
            gap: 15px;
        }

        #map {
            flex: 2;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            min-height: 70vh;
        }

        .form-container {
            flex: 1;
            background: white;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            max-height: 30vh;
            overflow-y: auto;
        }

        .form-title {
            color: #1e3c72;
            margin-bottom: 15px;
            font-size: 1.2em;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 10px;
        }

        .form-row {
            display: flex;
            gap: 10px;
            margin-bottom: 10px;
        }

        .form-row .form-group {
            flex: 1;
            margin-bottom: 0;
        }

        label {
            display: block;
            margin-bottom: 3px;
            color: #444;
            font-weight: 500;
            font-size: 0.9em;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            font-size: 0.9em;
        }

        textarea {
            height: 60px;
            resize: vertical;
        }

        input[type="file"] {
            display: block;
            margin: 10px 0;
        }

        button[type="submit"] {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-family: 'Poppins', sans-serif;
            font-weight: 500;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        button[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        /* Popup Stilleri */
        .custom-popup {
            font-family: 'Poppins', sans-serif;
            padding: 0;
            margin: 0;
        }

        .popup-header {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 15px 20px;
            border-radius: 12px 12px 0 0;
            margin: -13px -13px 0 -13px;
        }

        .popup-title {
            font-size: 1.2em;
            font-weight: 600;
            margin: 0;
            padding: 0;
        }

        .popup-content {
            padding: 15px 0;
        }

        .leaflet-popup-content-wrapper {
            padding: 0;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        .leaflet-popup-content {
            margin: 13px;
            width: 300px !important;
        }

        .leaflet-popup-tip {
            background: #1e3c72;
        }

        /* Responsive tasarım için medya sorguları */
        @media (min-width: 768px) {
            .container {
                flex-direction: row;
            }

            #map {
                flex: 3;
                height: calc(100vh - 30px);
            }

            .form-container {
                flex: 1;
                max-width: 350px;
                height: calc(100vh - 30px);
                max-height: none;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div id="map"></div>
        
        <div class="form-container">
            <div class="form-title">Yeni Konum Ekle</div>
            <form action="onayla.php" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id" id="marker_id">
                
                <div class="form-group">
                    <label for="baslik">Başlık:</label>
                    <input type="text" id="baslik" name="baslik" required>
                </div>

                <div class="form-group">
                    <label for="aciklama">Açıklama:</label>
                    <textarea id="aciklama" name="aciklama"></textarea>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="enlem">Enlem:</label>
                        <input type="text" id="enlem" name="enlem" required readonly>
                    </div>

                    <div class="form-group">
                        <label for="boylam">Boylam:</label>
                        <input type="text" id="boylam" name="boylam" required readonly>
                    </div>
                </div>

                <div class="form-group">
                    <label for="resim">Resim:</label>
                    <input type="file" id="resim" name="resim" accept="image/*">
                </div>

                <button type="submit">
                    <i class="fas fa-save"></i> Kaydet
                </button>
            </form>
            <button onclick="loadApprovedLocations()" style="margin-top: 10px; background: #1e3c72; color: white; padding: 10px 20px; border: none; border-radius: 25px; cursor: pointer;">
                Onaylanmış Konumları Göster
            </button>
            <button onclick="loadUnapprovedLocations()" style="margin-top: 10px; background: #d9534f; color: white; padding: 10px 20px; border: none; border-radius: 25px; cursor: pointer;">
                Onaylanmamış Konumları Göster
            </button>
        </div>
    </div>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>
    <script>
        // Harita sınırları
        const turkey = {
            north: 39,
            south: 37.70,
            east: 28,
            west: 26.10
        };

        
        var map = L.map('map', {
            center: [38.42112797734492, 27.13283080943736],
            zoom: 10,
            maxBounds: [
                [turkey.south, turkey.west],
                [turkey.north, turkey.east]
            ]
        });

        
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap contributors',
            maxZoom: 19
        }).addTo(map);

        
        var markers = L.markerClusterGroup();
        var activeMarker = null;

        
        function loadUnapprovedLocations() {
            markers.clearLayers();
            <?php
            try {
                $db = new PDO("mysql:host=localhost;dbname=deneme;charset=utf8", "root", "");
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                
                $sql = "SELECT * FROM konumlar where durum = 0";
                $stmt = $db->query($sql);
                
                while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo "
                    var marker = L.marker([" . $row['enlem'] . ", " . $row['boylam'] . "]);
                    var content = '<div class=\"custom-popup\">' +
                        '<div class=\"popup-header\">' +
                            '<h3 class=\"popup-title\">" . htmlspecialchars($row['baslik']) . "</h3>' +
                        '</div>' +
                        '<div class=\"popup-content\">' +
                            '<img id=\"resim-" . $row['id'] . "\" src=\"resimler/" . htmlspecialchars($row['resim']) . "\" alt=\"" . htmlspecialchars($row['baslik']) . "\" style=\"width:100%; height:auto; border-radius:8px; margin-bottom:10px;\">' +
                            '<p style=\"margin-bottom:10px;\">Açıklama: " . htmlspecialchars($row['aciklama']) . "</p>' +
                            '<form action=\"onayla.php\" method=\"POST\" enctype=\"multipart/form-data\" onsubmit=\"return validateForm(this)\">' +
                                '<input type=\"hidden\" name=\"id\" value=\"" . $row['id'] . "\">' +
                                '<textarea name=\"aciklama\" style=\"width:100%; height:60px; margin-bottom:10px;\" required></textarea>' +
                                '<input type=\"file\" name=\"resim\" accept=\"image/*\" style=\"margin-bottom:10px;\" onchange=\"previewImage(event, " . $row['id'] . ")\">' +
                                '<button type=\"submit\" style=\"background:green; color:white; padding:5px 10px; border:none; border-radius:5px; cursor:pointer;\">Onayla</button>' +
                            '</form>' +
                            '<form action=\"sil.php\" method=\"POST\" style=\"display:inline; margin-left:10px;\">' +
                                '<input type=\"hidden\" name=\"id\" value=\"" . $row['id'] . "\">' +
                                '<button type=\"submit\" style=\"background:red; color:white; padding:5px 10px; border:none; border-radius:5px; cursor:pointer;\">Sil</button>' +
                            '</form>' +
                        '</div>' +
                    '</div>';
                    marker.bindPopup(content);
                    markers.addLayer(marker);
                    ";
                }
            } catch(PDOException $e) {
                echo "console.error('Veritabanı hatası: " . $e->getMessage() . "');";
            }
            ?>
            map.addLayer(markers);
        }

        
        function loadApprovedLocations() {
            markers.clearLayers();
            <?php
            try {
                $sql = "SELECT * FROM konumlar where durum = 1";
                $stmt = $db->query($sql);
                
                while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo "
                    var marker = L.marker([" . $row['enlem'] . ", " . $row['boylam'] . "]);
                    var content = '<div class=\"custom-popup\">' +
                        '<div class=\"popup-header\">' +
                            '<h3 class=\"popup-title\">" . htmlspecialchars($row['baslik']) . "</h3>' +
                        '</div>' +
                        '<div class=\"popup-content\">' +
                            '<img id=\"resim-" . $row['id'] . "\" src=\"resimler/" . htmlspecialchars($row['resim']) . "\" alt=\"" . htmlspecialchars($row['baslik']) . "\" style=\"width:100%; height:auto; border-radius:8px; margin-bottom:10px;\">' +
                            '<p style=\"margin-bottom:10px;\">Açıklama: " . htmlspecialchars($row['aciklama']) . "</p>' +
                            '<form action=\"guncelle.php\" method=\"POST\" enctype=\"multipart/form-data\" onsubmit=\"return validateForm(this)\">' +
                                '<input type=\"hidden\" name=\"id\" value=\"" . $row['id'] . "\">' +
                                '<textarea name=\"aciklama\" style=\"width:100%; height:60px; margin-bottom:10px;\" required>" . htmlspecialchars($row['aciklama']) . "</textarea>' +
                                '<input type=\"file\" name=\"resim\" accept=\"image/*\" style=\"margin-bottom:10px;\" onchange=\"previewImage(event, " . $row['id'] . ")\">' +
                                '<button type=\"submit\" style=\"background:blue; color:white; padding:5px 10px; border:none; border-radius:5px; cursor:pointer;\">Güncelle</button>' +
                            '</form>' +
                            '<form action=\"sil.php\" method=\"POST\" style=\"display:inline; margin-left:10px;\">' +
                                '<input type=\"hidden\" name=\"id\" value=\"" . $row['id'] . "\">' +
                                '<button type=\"submit\" style=\"background:red; color:white; padding:5px 10px; border:none; border-radius:5px; cursor:pointer;\">Sil</button>' +
                            '</form>' +
                        '</div>' +
                    '</div>';
                    marker.bindPopup(content);
                    markers.addLayer(marker);
                    ";
                }
            } catch(PDOException $e) {
                echo "console.error('Veritabanı hatası: " . $e->getMessage() . "');";
            }
            ?>
            map.addLayer(markers);
        }

        
        loadUnapprovedLocations();

        
        map.on('click', function(e) {
            if (activeMarker) {
                map.removeLayer(activeMarker);
            }
            
            activeMarker = L.marker(e.latlng).addTo(map);
            
            document.getElementById('enlem').value = e.latlng.lat;
            document.getElementById('boylam').value = e.latlng.lng;
            
            var content = '<div class="custom-popup">' +
                '<div class="popup-header">' +
                    '<h3 class="popup-title">Yeni Konum</h3>' +
                '</div>' +
                '<div class="popup-content">' +
                    'Konum bilgilerini doldurun ve kaydedin.' +
                '</div>' +
            '</div>';
            
            activeMarker.bindPopup(content).openPopup();
        });

        function previewImage(event, id) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('resim-' + id);
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        }

        function validateForm(form) {
            if (form.aciklama.value.trim() === "") {
                alert("Açıklama boş bırakılamaz.");
                return false;
            }
            return true;
        }
    </script>
  </body>
</html>