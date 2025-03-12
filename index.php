<!DOCTYPE html>
<html>
  <head>
  <title>Gezi Haritasi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"/>
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
        
       html, body {
            height: 100%;
		   margin: 0px;
		   padding: 0px;
            font-family: 'Poppins', sans-serif;
	   }
        
	   #map {
        height: 100%;
        }

        #iw-container {
            margin-bottom: 10px;
        }

        .iw-title {
            font-family: 'Arial', sans-serif;
            font-size: 22px;
            font-weight: 400;
            padding: 10px;
            background-color: #48b5e9;
            color: white;
            margin: 0;
            border-radius: 2px 2px 0 0;
        }

        .iw-content {
            padding: 15px;
        }

        .iw-subTitle {
            font-size: 16px;
            font-weight: 700;
            padding: 5px 0;
        }

        .aciklama {
            margin: 10px 0;
        }

        .leaflet-popup-content-wrapper {
            padding: 0;
        }

        .leaflet-popup-content {
            margin: 0;
            max-width: 300px;
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

        .popup-image {
            position: relative;
            width: 100%;
            height: 200px;
            overflow: hidden;
            border-radius: 8px;
            margin-bottom: 15px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .popup-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .popup-description {
            color: #444;
            line-height: 1.6;
            margin-bottom: 15px;
            font-size: 0.95em;
        }

        .popup-button {
            display: inline-block;
            padding: 8px 20px;
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-size: 0.9em;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .popup-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .popup-meta {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            color: #666;
            font-size: 0.9em;
        }

        .popup-meta i {
            margin-right: 5px;
            color: #1e3c72;
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

        
        .oneri-form {
            padding: 10px 0;
        }

        .oneri-input {
            width: calc(100% - 20px);
            padding: 6px;
            margin-bottom: 8px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
        }

        .oneri-button {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
        }

        .oneri-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
    </style>
  </head>
  
  <body>
    <div id="map"></div>
	
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
    <script type="text/javascript">
        
      const turkey = { 
       north: 39,
       south: 37.70,
       east: 28,
       west: 26.10,};
       

        
        var map = L.map('map', {
            center: [38.42112797734492, 27.13283080943736],
          zoom: 10,
            minZoom: 10,
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

        function loaddata() {
			$.ajax({
				url: "konumlistesi.php",
				type: "POST",
				dataType: "json",
                success: function(data) {
                    $.each(data.konumlar, function(i, item) {
                        var marker = L.marker([item.enlem, item.boylam]);
                        
                        var content = '<div class="custom-popup">' +
                            '<div class="popup-header">' +
                                '<h3 class="popup-title">' + item.baslik.toUpperCase() + '</h3>' +
                            '</div>' +
                            '<div class="popup-content">' +
                                '<div class="popup-meta">' +
                                    '<i class="fas fa-calendar-alt"></i> Tarihi Mekan' +
                                '</div>' +
                                '<div class="popup-image">' +
                                    '<img src="resimler/' + item.resim + '" alt="' + item.baslik + '">' +
                                '</div>' +
                                '<div class="popup-description">' + item.aciklama + '</div>' +
                                '<form action="resimler.php" method="GET">' +
                                    '<input type="hidden" name="id_cek" value="' + item.id + '">' +
                                    '<button type="submit" class="popup-button">' +
                                        '<i class="fas fa-images"></i> Tüm Fotoğrafları Görüntüle' +
                                    '</button>' +
                                '</form>' +
                            '</div>' +
                        '</div>';

                        marker.bindPopup(content);
                        markers.addLayer(marker);
                    });
                    
                    map.addLayer(markers);
                }
            });
        }

        
        map.on('load', function() {
            loaddata();
        });

        
        loaddata();

        
        var activeMarker = null;
        var activePopup = null;

        // Haritaya tıklama olayı
        map.on('click', function(e) {
            
            if (activeMarker) {
                map.removeLayer(activeMarker);
            }

            
            activeMarker = L.marker(e.latlng, {
                icon: L.icon({
                    iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-violet.png',
                    iconSize: [25, 41],
                    iconAnchor: [12, 41],
                    popupAnchor: [1, -34]
                })
            }).addTo(map);

            
            var content = '<div class="custom-popup">' +
                '<div class="popup-header">' +
                    '<h3 class="popup-title">Yeni Mekan Önerisi</h3>' +
                '</div>' +
                '<div class="popup-content">' +
                    '<form class="oneri-form" action="oneri_kaydet.php" method="POST" enctype="multipart/form-data">' +
                        '<input type="hidden" name="enlem" value="' + e.latlng.lat + '">' +
                        '<input type="hidden" name="boylam" value="' + e.latlng.lng + '">' +
                        '<input type="text" name="baslik" class="oneri-input" placeholder="Mekan Adı" required>' +
                        '<textarea name="aciklama" class="oneri-input" placeholder="Açıklama" rows="3" required></textarea>' +
                        '<input type="file" name="resim" class="oneri-input" accept="image/*">' +
                        '<button type="submit" class="oneri-button">' +
                            '<i class="fas fa-paper-plane"></i> Öneriyi Gönder' +
                        '</button>' +
                    '</form>' +
                '</div>' +
            '</div>';

            
            activePopup = activeMarker.bindPopup(content, {
                maxWidth: 300,
                className: 'custom-popup'
            }).openPopup();
        });

        function tesekkur() {
			alert('Öneriniz için teşekkürler');
		}
	</script>
  </body>
</html>