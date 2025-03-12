<html>
  <head>
  	 
  	 <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width", initial-scale=1.0">
  <title>Gezi Haritasi</title> 
  <link rel="stylesheet" href="stylephp.css">
  <style type="text/css">
  
  @import url('https://fonts.googleapis.com/css2?family=Orelega+One&display=swap');
  
body{
    
    padding: 100;
    margin: 10;
    display: flex;
    min-height: 100vh;
    background: rgb(63,94,251);
background: radial-gradient(circle, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%);
}
.duzen {
  display: grid;
  grid-template-columns: repeat(8, 1fr);
  grid-template-rows: repeat(4, 1fr);
}

.yazi{
    font-family: 'Orelega One', cursive;
    color: white;
}


.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background: rgb(63,94,251);
background: radial-gradient(circle, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%);
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;

  
}
.sidenav a {
    color: white;
  padding: 4px 4px 4px 20px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 30px;
  margin-left: 50px;
}
.main{

    color: white;
}
</style>


  </head>
  <body>
    
<div class='main'>
<a style="font-size:40px;cursor:pointer;" onclick="openNav()">=</a>
</div>
<div id="YanMenu" class="sidenav" >
  <a style="cursor:pointer"  class="closebtn" onclick="closeNav()">x</a>
  <?php
error_reporting(0);
$x=$_GET["id_cek"];

$db=new PDO("mysql:host=localhost;dbname=deneme;charset=utf8","root","");
foreach($db->query("SELECT * FROM yorumlar WHERE marker_id=$x and durum=1",PDO::FETCH_BOTH)as $row)
echo " <a href='#'>$row[yorum]</a>"

  ?>


</div>

  <script>
    function openNav() {
    document.getElementById("YanMenu").style.width = "30%";
    }
    function closeNav() {
    document.getElementById("YanMenu").style.width = "0";
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



echo "<div><form method='POST' action='image_add.php' enctype='multipart/form-data'>
<a class='yazi'><center>RESIM EKLE<input type='file' name='resim'></a>
<input type='text' name='marker_id' value='$x' hidden>
<input type='submit' value='Ekle'></center><div><br>";





echo '<div class="duzen">';
foreach($db->query("SELECT `konumlar`.`baslik`, `konumlar`.`id`, `resimler`.`resim`, `resimler`.`durum` FROM `konumlar` , `resimler`where resimler.marker_id=$x and resimler.durum=0 and konumlar.id=$x",PDO::FETCH_BOTH)as $row)
echo "<div class='container'><div class='box'><div class='imgBx'><img width='300' height='200' src='galeri/$row[resim]'></div><div class='content'><div><h2 class='baslikk'>$row[baslik]</h2></div></div></div></div>";



?>