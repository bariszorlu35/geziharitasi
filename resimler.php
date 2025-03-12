<html>
  <head>
  	 
  	 <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width", initial-scale=1.0">
  <title>Gezi Haritasi</title> 
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  <link rel="stylesheet" href="stylephp.css">
  <style type="text/css">
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Orelega+One&display=swap');
  
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background: linear-gradient(135deg, #1a2a6c, #b21f1f, #fdbb2d) fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}

/* Sidebar Stilleri */
.sidebar {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1000;
    top: 0;
    left: 0;
    background: linear-gradient(135deg, #1a2a6c, #b21f1f);
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
    box-shadow: 2px 0 10px rgba(0,0,0,0.2);
}

.sidebar a.closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
    color: white;
    text-decoration: none;
    transition: color 0.3s ease;
}

.sidebar a.closebtn:hover {
    color: #fdbb2d;
}

/* Ana İçerik Stilleri */
.duzen {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    padding: 20px;
    margin-left: 0;
    transition: margin-left 0.5s;
    max-width: 1200px;
    margin: 0 auto;
}

.container {
    width: 100%;
    max-width: 300px;
    aspect-ratio: 4/3;
    background: white;
    border-radius: 0;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    transition: transform 0.3s ease;
    margin: 0 auto;
}

.container:hover {
    transform: translateY(-5px);
}

.imgBx {
    width: 100%;
    height: 100%;
    position: relative;
    overflow: hidden;
    border-radius: 0;
}

.imgBx img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.container:hover .imgBx img {
    transform: scale(1.05);
}

.content {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    padding: 15px;
    background: linear-gradient(to top, rgba(0,0,0,0.9), transparent);
    color: white;
}

.baslikk {
    font-family: 'Orelega One', cursive;
    color: white;
    margin: 0;
    font-size: 18px;
    text-align: center;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

/* Form Stilleri */
.baslik {
    background: rgba(255, 255, 255, 0.1);
    padding: 25px;
    border-radius: 10px;
    margin: 20px;
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
    backdrop-filter: blur(10px);
}

.title {
    color: white;
    font-size: 24px;
    margin-bottom: 20px;
    font-weight: 600;
    text-align: center;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
}

.input-box {
    margin-bottom: 20px;
}

.input-box input,
.input-box textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid rgba(255,255,255,0.2);
    border-radius: 5px;
    font-size: 14px;
    background: rgba(255,255,255,0.1);
    color: white;
    transition: all 0.3s ease;
}

.input-box input:focus,
.input-box textarea:focus {
    background: rgba(255,255,255,0.2);
    border-color: #fdbb2d;
    outline: none;
}

.input-box textarea {
    min-height: 100px;
    resize: vertical;
}

.details {
    color: white;
    margin-bottom: 8px;
    display: block;
    font-weight: 500;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
}

/* Buton Stilleri */
.openbtn {
    font-size: 16px;
    cursor: pointer;
    background: linear-gradient(135deg, #1a2a6c, #b21f1f);
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    margin: 10px;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
}

.openbtn:hover {
    background: linear-gradient(135deg, #b21f1f, #fdbb2d);
    transform: translateY(-2px);
}

.button input[type="submit"] {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #1a2a6c, #b21f1f);
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
}

.button input[type="submit"]:hover {
    background: linear-gradient(135deg, #b21f1f, #fdbb2d);
    transform: translateY(-2px);
}

/* Yorum Stilleri */
.yorumcuklar {
    background: rgba(255, 255, 255, 0.1);
    padding: 15px;
    margin: 10px 20px;
    border-radius: 8px;
    color: white;
    backdrop-filter: blur(5px);
    border: 1px solid rgba(255,255,255,0.1);
}

.yorumcuklar h3 {
    margin: 0 0 10px 0;
    color: #fdbb2d;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
}

.yorumcuklar p {
    margin: 0;
    font-size: 14px;
    line-height: 1.6;
}

.baslik2 {
    color: white;
    text-align: center;
    margin: 30px 0 20px;
    font-size: 24px;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
}

/* Resim Ekleme Formu */
.resim-ekleme-form {
    background: rgba(255, 255, 255, 0.1);
    padding: 20px;
    border-radius: 10px;
    margin: 20px auto;
    max-width: 500px;
    text-align: center;
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.1);
}

.resim-ekleme-form input[type="file"] {
    margin: 10px 0;
    color: white;
}

.resim-ekleme-form input[type="submit"] {
    background: linear-gradient(135deg, #1a2a6c, #b21f1f);
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
}

.resim-ekleme-form input[type="submit"]:hover {
    background: linear-gradient(135deg, #b21f1f, #fdbb2d);
    transform: translateY(-2px);
}

/* Responsive Tasarım */
@media (max-width: 768px) {
    .duzen {
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        padding: 10px;
        gap: 15px;
    }
    
    .container {
        max-width: 250px;
        border-radius: 0;
    }
    
    .content {
        padding: 10px;
    }
    
    .baslikk {
        font-size: 16px;
    }
}

@media (min-width: 1200px) {
    .duzen {
        grid-template-columns: repeat(4, 1fr);
    }
}
  </style>


  </head>
  <body>
    
  <div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <?php
$x=$_GET["id_cek"];


$db=new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");


echo '<div class="baslik">';
echo '<div class="title">Yorumunuzu Gönderin!</div>';
echo '<form action="yorumekle.php" method="post">';
echo '<div class="detay">';
echo '<div class="input-box">';
echo '<span class="details">Ad</span>';
echo '<input type="text" name="ad" placeholder="Ad Giriniz" required>';
echo '</div>';
echo '<div class="input-box">';
echo '<span class="details">Soyad</span>';
echo '<input type="text" name="soyad" placeholder="Soyad Giriniz" required>';
echo '</div>';
echo '<div class="input-box">';
echo '<span class="details">Yorum</span>';
echo '<textarea name="yorum" rows="4" placeholder="Yorumunuzu buraya yazın..." required></textarea>';
echo '</div>';
echo '<div class="input-box">';
echo "<input type='hidden' name='markerid' value='$x' required>";
echo '</div>';
echo '</div>';
echo '<div class="button">';
echo '<input type="submit" value="GÖNDER" onclick="thnx()">';
echo '</div>';
echo '</form>';
echo '</div>';
?>
<h2 style class="baslik2">YORUMLAR</h2>
  <?php
error_reporting(0);
$x=$_GET["id_cek"];


$db=new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");
foreach($db->query("SELECT * FROM yorumlar WHERE marker_id=$x and durum=1",PDO::FETCH_BOTH)as $row){
  echo '<div class="yorumcuklar">';
  echo '<h3>'.$row["ad"].' '.$row["soyad"].'</h3>';
echo '<p>-'.$row["yorum"].'</p>'; 
echo '</div>';
}
 

  ?>

</div>
<div id="main">
  <button class="openbtn" onclick="openNav()">&#9776;Yorumlar</button> 
  <a href="index.php"> <button class="openbtn" >Haritaya Dön</button></a>

</div>

  









</div>


  <script>
    let isSidebarOpen = false;
    
    function openNav() {
        if (!isSidebarOpen) {
            document.getElementById("mySidebar").style.width = "400px";
            document.getElementById("main").style.marginLeft = "400px";
            isSidebarOpen = true;
        } else {
            closeNav();
        }
    }

    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
        isSidebarOpen = false;
    }

    function thnx() {
        alert('Yorumunuz için teşekkürler! Yakın zamanda inceleyip onaylamamızı bekleyin!');
    }
    </script>
 
  </body>
</html>

<?php
error_reporting(0);
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "deneme";
$x=$_GET["id_cek"];
$db=new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");



echo "<div style='padding: left top 0px;'><form method='POST' action='image_add.php' enctype='multipart/form-data'>
<a class='yazi'><center>RESIM EKLE<input type='file' name='resim'></a>
<input type='text' name='marker_id' value='$x' hidden>
<input type='submit' value='Ekle'></center><div><br>";





echo '<div class="duzen">';
foreach($db->query("SELECT `konumlar`.`baslik`, `konumlar`.`id`, `resimler`.`resim`, `resimler`.`durum` FROM `konumlar` , `resimler`where resimler.marker_id=$x and resimler.durum=1 and konumlar.id=$x",PDO::FETCH_BOTH)as $row)
echo "<div class='container'><div class='imgBx'><img src='galeri/$row[resim]' alt='$row[baslik]'></div><div class='content'><h2 class='baslikk'>$row[baslik]</h2></div></div>";



?>
