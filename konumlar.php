<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" href="styles.css">
  <title>Gezi Haritasi</title>
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@1,700&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Orelega+One&display=swap');
       html, body {
		   height:100%;
		   margin: 0px;
		   padding: 0px;
	   }
	   #map {
        height: 100%;

       }
	   .form_canvasform{
		   text-align: center;
		   font-family: 'Orelega One', cursive;
		   margin-bottom: 5px;
		   
	   }
    </style>
	
  </head>
  
  <body>
  <script src="https://unpkg.com/@googlemaps/markerclustererplus/dist/index.min.js"></script>
    <div id="map"></div>
	
    <script type="text/javascript">
       
       const turkey = { 
       north: 39,
       south: 37.70,
       east: 28,
       west: 26.10,};



      var map;
	  var markers = [];
	  function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,

          restriction: {latLngBounds: turkey,strictBounds: false,},
          center: {lat:38.42112797734492,lng:27.13283080943736}
        });
		
		google.maps.event.addListener(map, 'idle', function () { loaddata(); });
		
		
		
		var prev_infowindow =false; 
		google.maps.event.addListener(map, 'click', function(event) {
   placeMarker(event.latLng);
   
   function placeMarker(location) {
	var markers = {};
	const image = 'http://maps.google.com/mapfiles/ms/icons/purple-dot.png'
	const image2 = 'https://img.icons8.com/wired/64/000000/marker.png'
    var marker = new google.maps.Marker({
        position: location, 
        map: map,
		icon : image	
    });
	var form = '<div class="form_canvasform">' +
      '<form id="form1" method="POST" action="onayla.php" enctype="multipart/form-data">' +
	  'Resim Ekle='+'<input type="file" name="resimyukle"/>' + '</br>' + 
	  'Başlık='+'<input type="text" name="baslik"/>' + '</br>' + 
	  '<input type="text" class="input" name="enlem" id="nameinput" size="31" maxlength="31" tabindex="1" value='+event.latLng.lat()+'>' + '</br>' + 
	  '<input type="text" class="input" name="boylam" id="nameinput" size="31" maxlength="31" tabindex="1" value='+event.latLng.lng()+'>' + '</br>' + 
	  '<textarea class="textarea" name="yorum" rows="3" cols="40" placeholder="Yorumunuzu buraya yazabilirsiniz.."></textarea>' + '</br>' + 
      '<input type="submit" name="ekle" value="EKLE" >' + 
      '</form>';


	var infowindow = new google.maps.InfoWindow({
		content:form,
		maxheight: 100
	});
	
		
google.maps.event.addListener(marker, 'click', function(event) {
	
	if( prev_infowindow ) {
           prev_infowindow.close();
        }
		prev_infowindow = infowindow;
		
          
		map.setCenter(marker.getPosition());		
  		infowindow.open(map, marker);	
});
	
	
};
});





							
		  
	
	};
	  
	  
	  
	    function loaddata(){
			var postData;
			$.ajax({
				url: "konumlistesi.php",
				type: "POST",
				data: postData,
				dataType: "json",
				
				success: function(data){
					var markers=[];
					$.each(data.konumlar, function(i, item){
						var marker = new google.maps.Marker({
								position: new google.maps.LatLng(item.enlem, item.boylam),
								map: map,
								description: item.boylam,
								draggable : false
						});
						
						markers.push(marker);
						 
						
						var content = '<div id="iw-container">' +
                    '<div class="iw-title">'+item.baslik.toUpperCase()+'</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Tarihi</div>' +
                      '<img src="resimler/'+item.resim+'" height="100" width="100">' +
                      '<p class="aciklama">'+item.aciklama+'</p>' +
                      "<form action='resimler.php' method='GET'>"+
                                "<input type='text' name='id_cek' value='"+item.id+"' hidden>"+
                                "<input type='submit' value='Görüntüle'>"+
                                "</form>"+
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>';
						var infoWindow = new google.maps.InfoWindow({
        				content: content
      					});
						  
						  
						  

						  
						 
						 google.maps.event.addListener(marker,'click',function(e){
								if($('.gm-style-iw').length){
									infoWindow.close();
									$('.gm-style-iw').parent().remove();
									
								}
											
                         		map.setCenter(marker.getPosition());
								infoWindow.open(this.getMap(),this)
						
                        });
					});
					new MarkerClusterer(map, markers, {
    			imagePath:
      			"https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m",
  					});
				}
				
			});
			
	    }

        
	    function loaddata(){
			var postData;
			$.ajax({
				url: "konumlistesi.php",
				type: "POST",
				data: postData,
				dataType: "json",
				
				success: function(data){
					var markers=[];
					$.each(data.konumlar, function(i, item){
						var marker = new google.maps.Marker({
								position: new google.maps.LatLng(item.enlem, item.boylam),
								map: map,
								description: item.boylam,
								draggable : false
						});
						markers.push(marker);
					
  


                  var form = '<div class="form_canvasform">' +
      '<form id="form1" method="POST" action="konumguncel.php" enctype="multipart/form-data">' +
      'Kullanıcı Yorumu='+item.yorum+ '</br>' + 
      'Resim Ekle='+'<input type="file" name="resimyukle" value='+item.resim+'/>' + '</br>' + 
      'Başlık='+'<input type="text" name="baslik" value='+item.baslik+'/>' + '</br>' + 
      '<input type="hidden" name="id" value='+item.id+'>' + '</br>' + 
      '<textarea class="textarea" name="aciklama" rows="3" cols="40">'+item.aciklama+'</textarea>'  + '</br>' + 
      '<input type="hidden" class="input" name="enlem" value='+item.enlem+' readonly>' + '</br>' + 
      '<input type="hidden" class="input" name="boylam" value='+item.boylam+' readonly>' + '</br>' + 
      '<div id="buton" class="button">' + 
	  '<input type="submit" name="degis" value="GÜNCELLE" onclick=eklendi()>' + 
      '<input type="submit" value="SİL" name="sil" onclick=silindi()>' +
      '</div>' +
      '</form>' +
      '</div>';
	  			new MarkerClusterer(map, markers, {
    			imagePath:
      			"https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m",
  					});
						var infoWindow = new google.maps.InfoWindow({
        				content: form
      					});
						 // Tıklanıldığında bilgi sayfasını açılmasını sağlayan fonksiyon
						 google.maps.event.addListener(marker,'click',function(e){
								if($('.gm-style-iw').length){
									infoWindow.close();
									$('.gm-style-iw').parent().remove();
									
								}
								
								map.setCenter(marker.getPosition());
								infoWindow.open(this.getMap(),this)
						
                        });

					});
					
				}
			});
	    }       

		

	  
	  
    </script>
	<script>
function silindi(){
		var infowindow = new google.maps.InfoWindow();
		
			alert('Kayıt Silindi');
		}

	function eklendi(){
		var infowindow = new google.maps.InfoWindow();
		
			alert('Kayıt Eklendi');
		}
	function tesekkur(){
		var infowindow = new google.maps.InfoWindow();
		
			alert('Öneriniz için teşekkürler');
		}



</script>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script async
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-S9xKEL0IRlXthqCyG7Hm5upRDtZN6i4&callback=initMap">
    </script>
   <script src="/js/infobox_packed.js" async defer></script>
  </body>
</html>